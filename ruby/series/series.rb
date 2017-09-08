class Series
  def initialize(input)
    @input = input
  end

  def slices(length)
    raise ArgumentError if @input.length < length

    @input.split('').map.with_index do |_, idx|
      @input[idx..-1].scan(/^.{#{length}}/)
    end.flatten
  end
end
