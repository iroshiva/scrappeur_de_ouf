

require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rubocop'
require 'rspec'



def collect_lign_curr_price
	# methode qui collecte un tableau contenant un tableau currencies et un tableau prices : [[currencies][prices]]

	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

	
	currencies = page.xpath('//td[3]')
	# met dans [currencies] toutes les lignes de code contenant chacune une currency

	prices = page.xpath('//td[5]')
	# met dans [prices] toutes les lignes de code contenant chacune un price

	[currencies, prices]
end


# METHODES INTERMÉDIAIRES QUE J'AI INTÉGRÉÉES DANS MA METHODE FINALE arr_comb_curr_price


	# def arr_curr(currencies)

	# 	arr_curr_new = []
	# 	currencies.each do |currency|
	# 		arr_curr_new <<	currency.text
	# 	end

	# 	arr_curr_new

	# end

	# puts arr_curr(currencies)



	# def arr_pric(prices)

	# 	arr_pric_new = []
	# 	prices.each do |price|
	# 	 	arr_pric_new << price.text.strip[1..-1].to_f
	# 	end

	# 	arr_pric_new

	# end

	# # puts arr_pric(prices)


def arr_comb_curr_price(array_curr, arr_price)
	# methode qui va combiner [currencies] et [prices]
	
	i = 0
	# variable

	super_array = []
	# création d'un nouvel array de hash

	hash_simple = {}
	# création d'un hash

		array_curr.length.times do |i|
		# permet de définir le nbr de répitition .times

			hash_simple = {array_curr[i].text => arr_price[i].text.strip[1..-1].to_f}
			# dans chaque hash, mettre en clé la currency.text (que le texte et pas les balises) et en valeur le price (idem .text, .strip enlève \n et $)

		super_array << hash_simple
		# met chaque hash généré dans un array

		end

		super_array
end


def perform
	array_collect = collect_lign_curr_price
	arr_comb_curr_price(array_collect[0], array_collect[1])
end

puts perform



