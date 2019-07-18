require_relative '../lib/mairie_christmas.rb'

describe "the method which combine town et emails" do
  it "should return an array of hashes {town => emails not nil" do
    expect(perform).not_to be_nil
  end
end
