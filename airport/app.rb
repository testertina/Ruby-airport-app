require_relative "classes/airport.rb"
require_relative "classes/flight.rb"
require_relative "classes/passenger.rb"
require "date"

@airport = Airport.new "Tina's Portal"
puts @airport.name

# Seeding data

flight_1 = Flight.new("Majorca", 20, "TG250", 2, Date.parse(2017-08-04))
flight_2 = Flight.new("Zakynthos", 10, "TG300", 2, Date.parse(2017-08-08))
flight_3 = Flight.new("NY", 30, "TG450", 2, Date.parse(2017-08-10))

@airport.add_flight flight_1
@airport.add_flight flight_2
@airport.add_flight flight_3

passenger_1 = Passenger.new("Tina", "Gohil", Date.parse(1992-08-04), 12345, "British", "TG250")
passenger_2 = Passenger.new("Rita", "Gohil", Date.parse(1992-08-10), 12345, "British", "TG250")
passenger_3 = Passenger.new("Tina", "Gohil", Date.parse(1992-08-04), 12345, "British", "TG250")


def create_flight
	puts "What is your destination?"
	destination = gets.chomp

	puts "What is the flight capacity?"
	capacity = gets.chomp

	puts "What is your flight code?"
	code = gets.chomp

	puts "What is the flight duration?"
	duration = gets.chomp

	puts "What is the departure date?"
	departure_time = gets.chomp

	@flight_1 = Flight.new(destination, capacity, code, duration, departure_time)

	@airport.add_flight @flight_1

end

def see_flights
	puts @airport.flights
end

def create_passenger
	puts "What is your first name?"
	first_name = gets.chomp

	puts "What is your surname?"
	surname = gets.chomp

	puts "What is your dob?"
	dob = gets.chomp

	puts "What is your passport number?"
	passport_number = gets.chomp

	puts "What is your nationality?"
	nationality = gets.chomp

	puts "What is your flight number?"
	flight_number = gets.chomp

	@passenger_1 = Passenger.new(first_name, surname, dob, passport_number, nationality, flight_number)

	@airport.add_passenger @passenger_1

	puts "Please choose your flight"
	see_flights
	@pass_flight = @airport.flights[gets.chomp]

	puts "#{@pass_flight}"

	@new_passenger = Passenger.new(first_name, surname, dob, passport_number, nationality, flight_number)
	@pass_flight.add_passenger_to_flight @new_passenger
	@airport.add_passenger @new_passenger

	menu

end

def see_passengers
	puts @airport.passengers
end

# def add_passenger
# 	@match_array = []
# 	@airport.passengers.each do | flight_number |
# 		if @airport.passengers.flight_number == @airport.flights.code 
# 			@match_array.push @airport.passengers
# 			@match_array.push @airport.flights
# 			puts @match_array
# 		else 
# 			puts "No flight match." 
# 		end
# 	end

# end

# def match_flight
# 	puts "What is your flight number?"
# 	@flight_number = gets.chomp

# 	puts "What is your passport number?"
# 	@passport = gets.chomp

# 	puts li if (li['ohn'])

# 	@airport.flights.each do | x |
# 		puts "match" if (x[flight_number])
# 		else
# 			puts "Incorrect flight number"
# 		end
# 	end

# 	@airport.passengers.each do | x |
# 		if @passport.match(/x/)
# 			puts "match"
# 		else
# 			puts "Incorrect passport number"
# 		end
# 	end

# end



def menu 
	company = true

	while company
		puts "Welcome, what would you like to do: Create Flight, View Flights, See Passengers, Create Passenger, Add Passengers, Quit?"
		choice = gets.chomp
	
		case choice
		when "Create Flight"
			create_flight
		when "View Flights"
			see_flights
		when "See Passengers"
			see_passengers
		when "Create Passenger"
			create_passenger
		when "Add Passenger"
			add_passenger
		when "Quit"
			"Goodbye"
			company = false
		else
			puts "That's not an option"
		end
	end
end


menu


# # puts flight_1.code

# airport.add_flight flight_1

# # puts airport.flights[0].capacity

# puts airport.flights


