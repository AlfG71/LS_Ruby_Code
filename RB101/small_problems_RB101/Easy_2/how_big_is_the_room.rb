puts "What's the length of the room in meters?"
room_length = gets.chomp.to_i

puts "What's the width of the room in meters?"
room_width = gets.chomp.to_i

area_in_meters = (room_length.to_f * room_width.to_f).round(2)
area_in_feet = area_in_meters.round(2) * 10.7639

puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."

# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# 

=begin
	P  (understand the Problem)
	     -create a program asking for input
	     -the input will be asking for the length and width of a room
	     -the input will be in meters
	     -the output will be a calculation of the area of the room based on the input values
	     -the output will be in both square meters and square feet

	E  (Examples)
	     => Enter the length of the room in meters: 
	     => 10 
	     => Enter the width of the room in meters: 
	     => 7 
	     => The area of the room is 70.0 square meters (753.47 square feet).

	D  (Data structures)
       Input:
         -String
       Output:
         -String
         -Integer
	
	A  (Algorithm)
	     -Ask the user for a number ("length of a room")
	     -Store that input in a variable called (room_length)
	     -Ask the user for a number ("width of a room")
	     -Store that input in a variable called (room_width) 
	     -Calculate the area from the two input values in meters
	     -Transform the area calculation from meters into feet
	     -Store the result of the calculation in two new variables (area_in_meters) & (area_in_feet)
	     -Output the result of the calculations interpolated inside a string
	     -Use this formula to calculate meters per feet: 
	     -1 square meter == 10.7639 square feet

	C  (Code)
	     puts "What's the length of the room in meters?"
	     room_length = gets.chomp.to_i
	     puts "What's the width of the room in meters?"
	     room_width = gets.chomp.to_i
	     area_in_meters = room_length.to_f * room_width.to_f
	     area_in_feet = area_in_meters * 10.7639
	     puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."


	
=end