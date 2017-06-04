class Grains
  SQUARES = 64

  def self.square(nb)
    new(nb).square
  end

  def self.total
    new(SQUARES).total
  end

  def self.print_board
    new(SQUARES).print_board
  end

  def initialize(nb)
    raise ArgumentError if [0, -1].include?(nb) || nb > 64
    @nb = nb
    populate_board
  end

  def square
    board[nb]
  end

  def total
    board.values.inject(:+)
  end

  def print_board
    board
  end

  private

  attr_reader :nb

  def board
    @board ||= Hash[(1..nb).map { |e| [e, e] }]
  end

  def populate_board
    board.keys.drop(2).map { |square| board[square] = board[square - 1] * 2 }
    true
  end
end

module BookKeeping; VERSION = 1; end
