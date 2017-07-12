class Airport
	attr_reader :name
	attr_accessor :flights, :passengers

	def initialize name
		@name = name
		@flights = []
		@passengers = []
	end

	def add_flight flight
		@flights.push flight

	end

	def add_passenger passenger_info
		@passengers.push passenger_info

	end

end