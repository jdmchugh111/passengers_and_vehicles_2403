class Park
    attr_reader :name, 
                :price,
                :vehicles,
                :revenue_generated

    def initialize(name, price)
        @name = name
        @price = price
        @vehicles = []
        @revenue_generated = 0
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
        @revenue_generated += vehicle.num_adults * @price
    end

    def list_passengers
        passenger_array = []
        @vehicles.each do |vehicle|
            passenger_array << vehicle.passengers
        end
        passenger_array.flatten
    end

    def list_names
        list_passengers.map do |passenger|
            passenger.name
        end
    end

end