class RunLengthEncoding
  def self.encode(input)
    new(input).run
  end

  def initialize(input)
    @input = input
  end

  def run
    grouped_characters.inject("") do |str, group|
      str << (group.length > 1 ? "#{group.length}#{group[0]}" : "#{group[0]}")
      str
    end
  end

  private

  attr_reader :input

  def grouped_characters
    @grouped_characters ||= input.scan(/((.)\2*)/).map(&:first)
  end
end
