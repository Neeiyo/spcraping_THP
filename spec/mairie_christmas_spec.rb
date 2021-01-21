require_relative '../lib/mairie_christmas.rb'

#La liste des url des mairies et des adresses e-mail est vide ?

describe "get_townhall_urls" do
  it "contains the url of every townhall in the area" do
    expect(get_townhall_urls == {}).to eq(false)
  end
end



#MOURS est-il dans la liste ?

describe "the greet function" do
  it "should include MOURS and secretaire.mairie.mours@wanadoo.fr" do
    expect(get_townhall_urls["MOURS"]).to eq(["secretaire.mairie.mours@wanadoo.fr"])  
 end
end

#HARAVILLIERS est-il dans la liste ?

describe "the greet function" do
  it "should include HARAVILLIERS and commune.haravilliers@orange.fr" do
    expect(get_townhall_urls["HARAVILLIERS"]).to eq(["commune.haravilliers@orange.fr"])  
end
end
#ABLEIGES est-il dans la liste ?

describe "the greet function" do
  it "should include ABLEIGES and mairie.ableiges95@wanadoo.fr" do
    expect(get_townhall_urls["ABLEIGES"]).to eq(["mairie.ableiges95@wanadoo.fr"])  
end
end
