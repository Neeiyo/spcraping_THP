
  require 'nokogiri'
require 'open-uri'

  @doc = Nokogiri::HTML(URI.open('https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=575'))

def deputy_info
name_array = []
mail_array = []

@doc.xpath("//ul/li/h2").each do |name|
  	name_array.push(name.content.split(' '))

 end

 @doc.xpath("//a[contains(@href, 'assemblee-nationale')]").each do |mail|
 	mail_array.push(mail.content)
 end

 	i = 0
 	while i < 575

 		puts "\{"
 		puts "    first_name => #{name_array[i][1]}"
 		puts "    Last_name => #{name_array[i][2]}"
 		puts "    Email => #{mail_array[i]}"
 		puts "\}, "
 		
 		i += 1
 		
end
end

 	
def perform
 	deputy_info
end

perform

