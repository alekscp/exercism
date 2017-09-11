module PhoneNumber
  def self.clean(number)
    number.gsub!(/[^\d]/, '')
    country_code, area_code, prefix, line_number = (number.match(/(\d{0,1})(\d{3})(\d{3})(\d{4})$/) || [])[1..-1]
    return unless ['', '1'].include?(country_code)
    return if area_code[0] == '1'
    return unless prefix[/^[2-9]/]
    area_code + prefix + line_number
  end
end

module BookKeeping; VERSION = 2; end
