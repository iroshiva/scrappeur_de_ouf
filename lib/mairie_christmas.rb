require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rubocop'



def get_townhall_email(url)
	# methode qui prend en entrée un url

	page_email = Nokogiri::HTML(open("http://annuaire-des-mairies.com#{url[1..-1]}"))
	# se connecte sur le site de la commune

	townhall_email = page_email.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
	#récupère l'email de la mairie

	townhall_name = url[5..-6]
	# le nom de la ville == à une partie de l'url 

	{townhall_name => townhall_email}
	# sort un hash avec nom de la ville et l'email de la mairie
end

# puts get_townhall_email('m/95/ableiges.html')


def get_townhall_urls
	# liste toutes les url des mairies de val d'oise

	page_villes = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	# se connecte au site qui présente tous les liens des communes de val d'oise

	 page_villes.xpath('//a[@class="lientxt"]/@href')
	 # on cherche avec xpath les urls, partie finale à modif

end

 # puts get_townhall_urls	


def perform
	array_out = Array.new
	# craetion de l'arrêt final

	array_urls = get_townhall_urls
	# on lance la méthode get_townhall_urls pour récupérer le tableaux de toutes les urls

	array_urls.each do |url|
	# pour chaque url de ce tableau
		array_out << get_townhall_email(url.text)
		# on l'injecte dans la méthode get_townhall_email pour récupérer le hash {ville => email} et le mettre dans le tableau final
	end


	array_out
	# on sort le tableau final

end

puts perform






# arr_townhall_new = []

# 	townhall.each do |town|
# 		arr_townhall_new <<	town.text.strip[5..-6]
# 	end

# 	arr_townhall_new






# def get_town(prices)

# 	arr_adress_mail = []
# 	adress_mail.each do |mail|
# 	 	arr_adress_mail << mail.text.strip[1..-1]
# 	end

# 	arr_adress_mail

# end

# puts arr_mail(prices)


	# puts ville = page.xpath('//95/ableiges').text


# 	villes_1 = page.xpath('//td[1]/p[1]').text

# 	villes_2 = page.xpath('//td[2]/p[1]').text

# 	villes_3 = page.xpath('//td[3]/p[1]').text 

# 	collect  = [villes_1, villes_2, villes_3]
# 	puts collect.flatten

# end 

# puts collect_lign_curr_price

	# met dans [currencies] toutes les lignes de code contenant chacune une currency

# 	prices = page.xpath('//td[5]')
# 	# met dans [prices] toutes les lignes de code contenant chacune un price

# 	[currencies, prices]
# end

# def arr_comb_curr_price(array_curr, arr_price)
# 	# methode qui va combiner [currencies] et [prices]
	
# 	i = 0
# 	# variable

# 	super_array = []
# 	# création d'un nouvel array de hash

# 	hash_simple = {}
# 	# création d'un hash

# 		array_curr.length.times do |i|
# 		# permet de définir le nbr de répitition .times

# 			hash_simple = {array_curr[i].text => arr_price[i].text.strip[1..-1].to_f}
# 			# dans chaque hash, mettre en clé la currency.text (que le texte et pas les balises) et en valeur le price (idem .text, .strip enlève \n et $)

# 		super_array << hash_simple
# 		# met chaque hash généré dans un array

# 		end

# 		super_array
# end


# def perform
# 	array_collect = collect_lign_curr_price
# 	arr_comb_curr_price(array_collect[0], array_collect[1])
# end

# puts perform