

require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rubocop'
require 'rspec'




page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

currencies = page.xpath('//td[3]').to_ary

prices = page.xpath('//td[5]').to_ary

# currencies.each do |currency|
# 	currency.text
# end

# arr_curr_new = []
# arr_curr_new << currencies


def arr_curr(currencies)

	arr_curr_new = []
	currencies.each do |currency|
		arr_curr_new <<	currency.text
	end

	arr_curr_new

end

# arr_curr(currencies)



def arr_pric(prices)

	arr_pric_new = []
	prices.each do |price|
	 	arr_pric_new << price.text
	end

	arr_pric_new

end

# arr_pric(prices)


# puts super_hash = Hash[arr_curr(currencies).zip(arr_pric(prices))]

# p hash

# puts currencies.zip(prices).to_h

# puts hash_simple = {arr_curr(currencies)[0] => arr_pric(prices)[0]}

i = 0
super_array = []
hash_simple = {}

	2266.times do |i|
		hash_simple = {arr_curr(currencies)[i] => arr_pric(prices)[i]}
		i+=1

	puts super_array << hash_simple	

	end


# puts super_array << hash_simple




