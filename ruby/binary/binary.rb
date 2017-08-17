module Binary
  def self.to_decimal(num)
    raise ArgumentError if num.match(/[^01]/)

    reversed_digits = num.scan(/\d/).reverse

    reversed_digits.map.with_index do |d, i|
      d.to_i * 2**i
    end.inject(:+)
  end
end

module BookKeeping; VERSION = 3; end
