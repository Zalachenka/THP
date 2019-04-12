require 'rubygems'
require 'nokogiri'
require 'open-uri'


def currency_rate

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   

  @currency_price = []
  @currency_name = []

  page.xpath('//a').each do |x|

     if   x.to_s.include?('class="currency-name-container link-secondary"')
        @currency_name << x.text

     elsif  x.to_s.include?('class="price"')
        @currency_price << x.text
     end  
  end

  return @currency_price, @currency_name

end

currency_rate

currency_hash = Hash[@currency_name.zip(@currency_price)]

puts currency_hash
