require './lib/passenger'

RSpec.describe Passenger do

    it "exists" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})   
     
        expect(charlie).to be_instance_of(Passenger)
    end

    it "has a name" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 

        expect(charlie.name).to eq("Charlie")
    end

    it "has an age" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 

        expect(charlie.age).to eq(18)
    end

    it "can return true/false if passenger is an adult" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 

        expect(charlie.adult?).to eq(true)
    end

    it ".adult? will return false if passenger is under 18" do
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})

        expect(taylor.adult?).to eq(false)
    end

    it "returns false as default if .driver? is called" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 

        expect(charlie.driver?).to eq(false)
    end

    it "if .drive is called on a passenger, .driver? returns true" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        charlie.drive

        expect(charlie.driver?).to eq(true)
    end
end
