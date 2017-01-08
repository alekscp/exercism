module Hamming
  def self.compute(a, b)
    raise ArgumentError if a.length != b.length

    a_split = a.split('')
    b_split = b.split('')

    (0...a_split.length).map { |idx| a_split[idx] == b_split[idx] }.count(false)
  end
end
