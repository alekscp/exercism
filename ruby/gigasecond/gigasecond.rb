module Gigasecond
  GIGASECOND = 10**9.freeze

  def self.from(time)
    time + GIGASECOND
  end
end

module BookKeeping
  VERSION = 5
end
