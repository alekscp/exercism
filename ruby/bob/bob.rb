module Bob
  ANSWERS = {
    'question' => 'Sure.',
    'yell' => 'Whoa, chill out!',
    'without_saying_anything' => 'Fine. Be that way!',
    'anything_else' => 'Whatever.'
  }

  def self.hey(remark)
    if remark.scan(/[A-Z]/).count > remark.scan(/[a-z]/).count
      ANSWERS['yell']
    elsif remark.scan(/[^\n\s\t]/).last =~ /[\.\!\w]$/
      ANSWERS['anything_else']
    elsif remark.scan(/[^\n\s\t]/).last =~ /\?$/
      ANSWERS['question']
    else
      ANSWERS['without_saying_anything']
    end
  end
end

module BookKeeping; VERSION = 1; end
