class Grains
  SQUARES = 64

  def self.square(nb)
    new(nb).square
  end

  def self.total
    new(SQUARES).total
  end

  def initialize(nb)
    raise ArgumentError if [0, -1].include?(nb) || nb > 64
    @nb = nb
    @board = Hash[(1..nb).map { |e| [e, e] }]
    populate_board
  end

  def square
    board[nb]
  end

  def total
    board.values.inject(:+)
  end

  private

  attr_reader :nb, :board

  def populate_board
    board.keys.drop(2).map { |square| board[square] = board[square - 1] * 2 }
    true
  end
end

module BookKeeping; VERSION = 1; end
