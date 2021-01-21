# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
def crypto_scrapper
  doc = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))
  x = 0
  liste = []
  # Search for nodes by xpath
  while x <= 200
    doc.xpath("/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[3]").each do |link|
      doc.xpath("/html/body/div/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{x}]/td[5]/div/a").each do |price|
        array = "\{ \"#{link.content}\" => " << "#{price.content} \}, "
        liste.push(array)
      end
    end
    x += 1
  end
  liste
end

def perform
  crypto_scrapper
end

puts 'Voici la liste: '
puts ''
puts perform
