class Complement
  def self.of_dna(seq)
    seq.split('').map do |nucleotide|
      case nucleotide
      when 'C'
        'G'
      when 'G'
        'C'
      when 'T'
        'A'
      when 'A'
        'U'
      when 'U'
        ''
      else
        return ''
      end
    end.join
  end
end

module BookKeeping
  VERSION = 4
end
