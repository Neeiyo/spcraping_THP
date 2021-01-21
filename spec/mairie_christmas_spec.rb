require_relative '../lib/mairie_christmas.rb'

#La liste des url des mairies est vide ?

describe "get_townhall_urls" do
  it "contains the url of every townhall in the area" do
    expect(get_townhall_urls == []).to eq(false)
  end
end

#La liste des emails de mairies est vide ?

describe "get_townhall_email" do
  it "contains the names and emails of every townhall in the area" do
    expect(get_townhall_email(townhall_url) == []).to eq(false)
  end
end

#MOURS est-il dans la liste ?

describe "the greet function" do
  it "should include MOURS and secretaire.mairie.mours@wanadoo.fr" do
    expect(get_townhall_urls.find{|h| h["MOURS"] != nil} == nil).to eq(false)  
    expect(get_townhall_urls.find{|h| h["secretaire.mairie.mours@wanadoo.fr"] != nil} == nil).to eq(false)
end
end

#HARAVILLIERS est-il dans la liste ?

describe "the greet function" do
  it "should include HARAVILLIERS and commune.haravilliers@orange.fr" do
    expect(get_townhall_urls.find{|h| h["HARAVILLIERS"] != nil} == nil).to eq(false)  
    expect(get_townhall_urls.find{|h| h["commune.haravilliers@orange.fr"] != nil} == nil).to eq(false)
end
end
#ABLEIGES est-il dans la liste ?

describe "the greet function" do
  it "should include ABLEIGES and mairie.ableiges95@wanadoo.fr" do
    expect(get_townhall_urls.find{|h| h["ABLEIGES"] != nil} == nil).to eq(false)  
    expect(get_townhall_urls.find{|h| h["mairie.ableiges95@wanadoo.fr"] != nil} == nil).to eq(false)
end
end
