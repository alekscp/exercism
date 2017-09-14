module PhoneNumber
  NANP_REGEX = %r{
    ^(?<country>[1]{0,1})
    (?<area>[2-9]\d{2})
    (?<prefix>[2-9]\d{2})
    (?<line>\d{4})$
  }x

  class << self
    def clean(number)
      numbering = number.gsub(/[^\d]/, '').match(NANP_REGEX)
      render_phone_number(numbering)
    end

    private

    def render_phone_number(numbering)
      return unless numbering
      numbering[:area] + numbering[:prefix] + numbering[:line]
    end
  end
end

module BookKeeping; VERSION = 2; end
