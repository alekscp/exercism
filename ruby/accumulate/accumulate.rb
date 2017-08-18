class Array
  def accumulate
    return to_enum unless block_given?

    reduce([]) { |coll, elem| coll << yield(elem) }
  end
end

module BookKeeping; VERSION = 1; end
