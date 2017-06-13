module RunLengthEncoding
  def self.encode(input)
    input.scan(/((.)\2*)/).map(&:first).inject("") do |str, group|
      str << (group.length > 1 ? "#{group.length}#{group[0]}" : "#{group[0]}")
      str
    end
  end

  def self.decode(input)
    input.scan(/((\d*.)\2*)/).map(&:first).inject("") do |str, group|
      if group.length > 1 && group[/\d*/].to_i > 0
        str << group[/[^\d]/] * group[/\d*/].to_i
      elsif group.length == 1
        str << group
      else
        str << input
      end
      str
    end
  end
end

module BookKeeping; VERSION = 3; end
