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
        names_list = list_passengers.map do |passenger|
            passenger.name
        end
        names_list.sort
    end

    def list_adults
        adult_list = []
        list_passengers.each do |passenger|
            if passenger.adult?
                adult_list << passenger
            end
        end
        adult_names = adult_list.map do |passenger|
            passenger.name
        end
        adult_names.sort
    end

    def list_minors
        minors_list = []
        list_passengers.each do |passenger|
            if passenger.adult? == false
                minors_list << passenger
            end
        end
        minor_names = minors_list.map do |passenger|
            passenger.name
        end
        minor_names.sort
    end

end