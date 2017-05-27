module RomanNumerals
  # ROMAN_NUMERALS_MAPPING = 
  #   1 => 'I',
  #   5 => 'V',
  #   10 => 'X',
  #   50 => 'L',
  #   100 => 'C',
  #   500 => 'D',
  #   1000 => 'M'
  # }

  ROMAN_NUMERALS_MAPPING = {
    1 => { 'symbol' => 'I' },
    5 => { 'symbol' => 'V', 'diff_factor' => 1 },
    10 => { 'symbol' => 'X', 'diff_factor' => 1 },
    50 => { 'symbol' => 'L', 'diff_factor' => 10 },
    100 => { 'symbol' => 'C', 'diff_factor' => 10 },
    500 => { 'symbol' => 'D', 'diff_factor' => 10 },
    1000 => { 'symbol' => 'M', 'diff_factor' => 100 }
  }

  def to_roman
    num = self
    roman_numeral = ''
    require 'pry'; binding.pry


    ROMAN_NUMERALS_MAPPING.keys.reverse.map do |k|
      # mod = k % num
      # roman_numeral << ROMAN_NUMERALS_MAPPING[k] * mod
      # num -= mod

      # # q, m = (k - self).divmod(k)
      # # roman_numeral << ROMAN_NUMERALS_MAPPING[k] * q.abs
      # # quotient, modulus = k.divmod(num)
      # roman_numeral << ROMAN_NUMERALS_MAPPING[k] * modulus
      # num -= modulus
      # # num -= (modulus + quotient)
    end

    roman_numeral
  end
end

class Fixnum; include RomanNumerals; end

