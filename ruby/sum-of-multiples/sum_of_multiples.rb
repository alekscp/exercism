class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    (1...limit).inject(0) do |sum, n|
      sum += n if factors.any? { |fac| n % fac == 0 }
      sum
    end
  end

  private

  attr_reader :factors
end

module BookKeeping; VERSION = 1; end
