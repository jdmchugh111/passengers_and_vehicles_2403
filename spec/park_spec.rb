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

    it "can list all passengers that entered the park" do
        park = Park.new("Rocky Mountain NP", 15)
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
        jude = Passenger.new({"name" => "Jude", "age" => 20})   
        taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor)

        park.add_vehicle(vehicle_1)

        expect(park.list_passengers).to eq([charlie, jude, taylor])
    end

    it "can calculate revenue generated" do
        park = Park.new("Rocky Mountain NP", 15)
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
        jude = Passenger.new({"name" => "Jude", "age" => 20})   
        taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor)

        park.add_vehicle(vehicle_1)

        expect(park.revenue_generated).to eq(30)
    end

    it "can list all passenger names" do
        park = Park.new("Rocky Mountain NP", 15)
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
        jude = Passenger.new({"name" => "Jude", "age" => 20})   
        taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor)

        park.add_vehicle(vehicle_1)

        expect(park.list_names).to eq(["Charlie", "Jude", "Taylor"])
    end

    it "can list all adults" do
        park = Park.new("Rocky Mountain NP", 15)
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
        jude = Passenger.new({"name" => "Jude", "age" => 20})   
        taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor)

        park.add_vehicle(vehicle_1)

        expect(park.list_adults).to eq(["Charlie", "Jude"])
    end

    it "can list all minors" do
        park = Park.new("Rocky Mountain NP", 15)
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
        jude = Passenger.new({"name" => "Jude", "age" => 20})   
        taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor)

        park.add_vehicle(vehicle_1)

        expect(park.list_minors).to eq(["Taylor"])
    end
end