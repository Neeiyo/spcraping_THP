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

	@doc.xpath("/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[5]/div").each do |price|
	
	array = ("\{ \"name.content\"") << (" => #{price.content} \}, ")
	array_fin = Hash.new
	array_fin = array
	puts array_fin
end
end 
  x += 1

end
end


def perform
crypto_scrapper
xpath
end

perform