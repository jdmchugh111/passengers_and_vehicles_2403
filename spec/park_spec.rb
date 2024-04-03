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

    it "can list all vehicles that entered the park" do
        park = Park.new("Rocky Mountain NP", 15)
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        vehicle_2 = Vehicle.new("2009", "Toyota", "Tacoma")
        vehicle_3 = Vehicle.new("2013", "Toyota", "RAV4")

        park.add_vehicle(vehicle_1)
        park.add_vehicle(vehicle_2)
        park.add_vehicle(vehicle_3)

        expect(park.vehicles).to eq([vehicle_1, vehicle_2, vehicle_3])
    end
end