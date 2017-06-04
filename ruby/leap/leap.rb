module Year
  def self.leap?(year)
    return false if year % 100 == 0 unless year % 400 == 0
    year % 4 == 0
  end
end

module BookKeeping; VERSION = 3; end
