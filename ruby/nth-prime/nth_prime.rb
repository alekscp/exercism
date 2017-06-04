class Prime
  LOWEST_PRIME = 2
  LARGE_NUMBER = 200_000

  def self.nth(nth_prime)
    new(nth_prime).extract
  end

  def initialize(limit)
    @limit = limit
  end

  def extract
    raise ArgumentError if limit == 0
    sieve_of_eratosthenes[limit - 1]
  end

  private

  attr_reader :limit

  def integers
    @integers ||= Hash[(2..LARGE_NUMBER).map { |e| [e, true] }]
  end

  def sieve_of_eratosthenes
    LOWEST_PRIME.upto(Math.sqrt(LARGE_NUMBER)) do |i|
      if integers[i]
        (i..LARGE_NUMBER).step(i).select { integers[i] }.drop(1).each do |key|
          integers[key] = false
        end
      end
    end
    integers.select { |_, v| v }.keys
  end
end

module BookKeeping; VERSION = 1; end
