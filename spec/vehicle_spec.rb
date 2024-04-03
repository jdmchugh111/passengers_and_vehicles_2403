require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do

    it "exists" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle).to be_instance_of(Vehicle)
    end

    it "has a year" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.year).to eq("2001")
    end

    it "has a make" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.make).to eq("Honda")
    end

    it "has a model" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.model).to eq("Civic")
    end

    it ".speeding? defaults to false" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.speeding?).to eq(false)
    end

    it ".speeding? returns true if .speed is called on a vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        vehicle.speed

        expect(vehicle.speeding?).to eq(true)
    end
end