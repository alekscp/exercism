class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    (1...limit).inject(0) do |sum, n|
      sum += n if multiples.map { |mul| n % mul == 0 }.any?
      sum
    end
  end

  private

  attr_reader :multiples
end

module BookKeeping; VERSION = 1; end
