# frozen_string_literal: true

require_relative '../lib/crypto_scrapper'

# La liste est vide?

describe 'crypto_monney' do
  it 'maximum_value' do
    expect(perform == []).to eq(false)
  end

  # BTC est-il dans la liste?
  it 'contains Bitcoin' do
    expect(perform.find { |h| !h['BTC'].nil? }.nil?).to eq(false)
  end

  # VLX est-il dans la liste?
  it 'contains Velas' do
    expect(perform.find { |h| !h['VLX'].nil? }.nil?).to eq(false)
  end

  # INJ est-il dans la liste?
  it 'contains Injective Protocol' do
    expect(perform.find { |h| !h['INJ'].nil? }.nil?).to eq(false)
  end

  # vérification du nombre d'éléments:
  it 'contains 200 elements' do
    expect(perform.length).to eq(200)
  end
end
