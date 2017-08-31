require 'benchmark'

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

  def to2(limit)
    factors.flat_map do |f|
      (1...limit).select { |n| n % f == 0 }
    end.uniq.sum
  end

  private

  attr_reader :factors
end

module BookKeeping; VERSION = 1; end

Benchmark.bm(7) do |x|
  x.report("first:") {SumOfMultiples.new(43, 47).to(10000)}
  x.report("second:") {SumOfMultiples.new(5, 6, 8).to(150)}
  x.report("third:") {SumOfMultiples.new(4, 6).to(15)}
  x.report("fourth:") {SumOfMultiples.new(3, 5, 9).to(10000000)}
  puts "Other implementation of #to"
  x.report("first:") {SumOfMultiples.new(43, 47).to2(10000)}
  x.report("second:") {SumOfMultiples.new(5, 6, 8).to2(150)}
  x.report("third:") {SumOfMultiples.new(4, 6).to2(15)}
  x.report("fourth:") {SumOfMultiples.new(3, 5, 9).to2(10000000)}
end
