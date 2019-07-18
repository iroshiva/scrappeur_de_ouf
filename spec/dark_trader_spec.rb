require_relative '../lib/dark_trader.rb'

describe "the method which combine curr et price" do
  it "should return an array of hashes {currency => price not nil" do
    expect(perform).not_to be_nil
  end

 # MARCHE PAS....
  it "should return an array of hashes {currency => price" do
    expect(perform).to eq({'BTC' => 9758.7})
  end
  
end