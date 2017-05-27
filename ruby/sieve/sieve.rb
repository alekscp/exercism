class Sieve
  SMALLEST_PRIME = 2

  def initialize(nb)
    @nb = nb
  end

  def primes
    (2..square_root_of_nb).each do |i|
        multiples_of_i_up_to_nb(i).each { |multiple| integers[multiple - 2] = false }
    end

    prime_numbers_remaining
  end

  def integers
    @integers ||= (SMALLEST_PRIME..@nb).map { true }
  end

  def square_root_of_nb
    @square_root_of_nb ||= Math.sqrt(@nb).floor
  end

  def multiples_of_i_up_to_nb(i)
    (i..@nb).step(i).select { integers[i - 2] }.drop(1)
  end

  def prime_numbers_remaining
    integers.map.with_index { |elem, idx| idx + 2 if elem }.compact
  end
end

module BookKeeping
  VERSION = 1
end
