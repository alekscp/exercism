require 'ostruct'

class School
  attr_accessor :students_storage

  def initialize
    @students_storage = []
  end

  def students(grade)
    students_storage.select { |student| student.grade == grade }.map(&:name).sort
  end

  def add(name, grade)
    students_storage << OpenStruct.new(name: name, grade: grade)
  end

  def students_by_grade
    grades.map do |grade|
      Hash.new.tap do |hsh|
        hsh[:grade] = grade
        hsh[:students] = students(grade)
      end
    end.sort_by { |hsh| hsh[:grade] }
  end

  private

  def grades
    students_storage.map { |student| student.grade }.uniq
  end
end

module BookKeeping; VERSION = 3; end
