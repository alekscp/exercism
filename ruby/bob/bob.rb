module Bob
  ANSWERS = {
    'question' => 'Sure.',
    'yell' => 'Whoa, chill out!',
    'without_saying_anything' => 'Fine. Be that way!',
    'anything_else' => 'Whatever.'
  }

  def self.hey(remark)
    if (remark.gsub(/[^A-Za-z]/, '').scan(/[A-Z]/).count == remark.gsub(/[^A-Za-z]/, '').length) && !remark.gsub(/[^A-Za-z]/, '').empty?
      ANSWERS['yell']
    elsif remark.gsub(/[\n\s]/, '').match(/[\.\!\w]$/)
      ANSWERS['anything_else']
    elsif remark.gsub(/[\n\s]/, '').match(/\?$/)
      ANSWERS['question']
    else
      ANSWERS['without_saying_anything']
    end
  end
end

module BookKeeping; VERSION = 1; end
