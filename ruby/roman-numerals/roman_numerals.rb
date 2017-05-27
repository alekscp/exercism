module RomanNumerals
  MAPPINGS = {
    1 => 'I',
    4 => 'IV',
    5 => 'V', 
    9 => 'IX',
    10 => 'X', 
    40 => 'XL',
    50 => 'L', 
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  def to_roman
    convert self
  end

  private

  def convert(value)
    closest_lowest_key = MAPPINGS.keys.reverse.find { |e| e <= value }

    if value == closest_lowest_key
      return MAPPINGS[value]
    end

    MAPPINGS[closest_lowest_key] + convert(value - closest_lowest_key)
  end
end

class Fixnum; include RomanNumerals; end

module BookKeeping; VERSION = 2; end
