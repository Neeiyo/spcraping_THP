require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
def crypto_scrapper
  @doc = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))
# Search for nodes by xpath
end

def xpath
	x = 0
	while x < 100
	@doc.xpath("//html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[3]").each do |name|
	#puts name.content
	@doc.xpath("/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[5]/div").each do |price|
	#price = price.to_sym
	#puts price.content
	#puts name.content => price.content
	array = ("\{ \"name.content\"") << (" => #{price.content} \}, ")
	array_fin = Hash.new
	array_fin = array
	puts array_fin
end
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
xpath
end

perform