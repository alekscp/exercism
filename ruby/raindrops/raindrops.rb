module Raindrops
  FACTOR_MAPPINGS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(num)
    output = FACTOR_MAPPINGS.map { |factor, output| output if num % factor == 0 }.join
    output.empty? ? num.to_s : output
  end
end

module BookKeeping
  VERSION = 3
end
