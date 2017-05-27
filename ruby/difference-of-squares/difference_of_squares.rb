class Squares
  attr_reader :nb, :square_of_sum, :sum_of_squares

  def initialize(nb)
    @nb = nb
  end

  def square_of_sum
    @square_of_sum ||= (0..nb).inject(:+) ** 2
  end

  def sum_of_squares
    @sum_of_squares ||= (0..nb).inject { |sum, n| sum + n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
