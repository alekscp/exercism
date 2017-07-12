module Binary
  def self.to_decimal(num)
    reversed_digits = num.scan(/\d/).reverse

    reversed_digits.map.with_index do |d, i|
      d.to_i * 10**i
    end.inject(:+)
  end
end
