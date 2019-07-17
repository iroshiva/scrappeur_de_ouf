

require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rubocop'
require 'rspec'




page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
# puts page.xpath('/html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[1]/td[3]').text

# puts table = page.xpath("//*[@id='currencies-all']").text 

currencies = page.xpath('//td[3]').to_ary

prices = page.xpath('//td[5]').to_ary


currencies.each do |currency|
	currency.text
end


prices.each do |price|
	 puts price.text
end

# puts currencies.zip(prices).to_h

# puts hash_simple = {currency[0] => prices[0]}


