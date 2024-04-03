require './lib/park'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Park do
    
    it "exists" do
        park = Park.new("Rocky Mountain NP", 15)

        expect(park).to be_instance_of(Park)
    end

    it "has a name" do
        park = Park.new("Rocky Mountain NP", 15)

        expect(park.name).to eq("Rocky Mountain NP")
    end

    it "has an admission price" do
        park = Park.new("Rocky Mountain NP", 15)

        expect(park.price).to eq(15)
    end
end