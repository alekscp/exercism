module Pangram
  def self.pangram?(phrase)
    phrase.gsub(/[^a-zA-Z]/, '').split('').uniq.count == 26
  end
end

module BookKeeping
  VERSION = 4
end
