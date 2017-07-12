class Flight

	attr_accessor :destination, :duration, :departure_time, :passengers_on_flight, :match_array
	attr_reader :capacity, :code

	def initialize destination, capacity, code, duration, departure_time
		@destination = destination
		@capacity = capacity
		@code = code
		@duration = duration
		@departure_time = departure_time
		@match_array = []
	end

	def to_s #overriding puts (put string.to_s)
		"Flight #{@code} to #{destination} on #{departure_time}."
	end

	def add_passenger_to_flight passenger_info
		@passengers_on_flight.push passenger_info

	end


end