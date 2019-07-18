require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rubocop' 

# /deputes/fiche/OMC_PA722268

# PB DE CONNEXION TCP DEPUIS 20H..............


def get_first_name(url)
	page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr#{url[1..-1]}"))

	get_first = page.xpath('//body/div/div[3]/div/div/section/div/article/div[3]/div/div/div/ul/li/a').text

	# sort un tableau [ mme/mr, prenom, nom]
	first_name = (get_first.split)[1]

end

# puts get_first_name('/deputes/fiche/OMC_PA720728')

def get_last_name(url)
	page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr#{url[1..-1]}"))

	get_last = page.xpath('/html/body/div/div[3]/div/div/div/section[1]/div/article/div[2]/h1').text


	last_name = (get_last.split)[2]

end

puts get_last_name('/deputes/fiche/OMC_PA722268')

def get_e_mail(url)

	page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr#{url[1..-1]}"))

	get_mail = page.xpath('/html/body/div/div[3]/div/div/div/section[1]/div/article/div[3]/div/dl/dd[4]/ul/li[2]/a').text


end

# puts get_e_mail(url)

	
def get_depute_urls

  page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
  urls = page.xpath('//body/div/div[3]/div/div/section/div/article/div[3]/div/div/div/ul/li/a/@href')
  [urls]
end

puts get_depute_urls



# def hashe
# 	hashe_out = Hash.new

# 	hashe_out = {"first_name" => first_name[0], "last_name" => last_name[0], "email" => e_mail[0]}

# end

# def perform
# 	array_out = Array.new

# 	hashe_out = Hash.new

# 	array_urls = get_depute_urls

# 	array_urls.each do |url|

# 		hashe_out = {"first_name" => get_first_name(url.join), "last_name" => get_last_name(url.join), "email" => get_e_mail(url.join)}

# 	array_out << hashe_out

# 	# puts array_out

# 	end	
	
# end

# puts perform