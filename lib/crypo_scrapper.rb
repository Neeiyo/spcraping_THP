require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
def crypto_scrapper
  doc = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))
  x = 0
# Search for nodes by xpath
	while x < 100
	doc.xpath("/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[2]/div/a").each do |link|
 	  puts link.content
 	end 
  x += 1
end
end
# Or mix and match
#doc.search('nav ul.currencies li a', '//article//h2').each do |link|
  #puts link.content
#end
#end

#def arr
#	@crypto_scrapper
#	link.  .each do |result|
#end

def perform
crypto_scrapper
end

perform