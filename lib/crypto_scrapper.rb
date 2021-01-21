require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
def crypto_scrapper
  doc = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))
  x = 0
# Search for nodes by xpath
	while x < 100
  doc.xpath("/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[3]").each do |link|
         doc.xpath("/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[5]/div/a").each do |price|
          array = "\"#{link.content}\" => " << price.content
          puts array
          
    end 
 	end 
    x += 1
  end
end

def perform
crypto_scrapper
end


perform