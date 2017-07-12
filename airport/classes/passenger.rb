class Passenger
	attr_reader :first_name, :surname, :dob, :passport_number, :nationality, :flight_number

	def initialize first_name, surname, dob, passport_number, nationality, flight_number
		@first_name = first_name
		@surname = surname
		@dob = dob
		@passport_number = passport_number
		@nationality = nationality
		@flight_number = flight_number
			
	end

	def to_s #overriding puts (put string.to_s)
		"#{@first_name} #{surname}, DOB: #{dob}, Passport Number: #{passport_number} of Nationality: #{nationality}."
	end

end