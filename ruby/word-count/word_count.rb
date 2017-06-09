class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    split_words.inject(Hash.new(0)) { |hsh, word| hsh[word] += 1; hsh }
  end

  private

  attr_reader :phrase

  def split_words
    @split_words ||= phrase.scan(/\b[\w'][^\s,]*\b/).map(&:downcase)
  end
end

module BookKeeping; VERSION = 1; end
