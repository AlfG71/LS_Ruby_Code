# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Further Exploration

# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

=begin

Problem:

	-Create a program that asks for user input as length and width of a room in meters
	-It takes the user input and converts it into the value of the area of the room into square meters and square feet.
	-All valid inputs are assumed

Example Run:  

  -Enter the length of the room in meters:
    10
  -Enter the width of the room in meters:
    7
  -The area of the room is 70.0 square meters (753.47 square feet).

Data Structures:
  Input  = Integer
  Output = String

  Algorithm:
  1) print a string asking the user for a number
  2) store that number into a new variable length_room_in_meters
  3) print a string asking the user for another number
  4) store that new number into a new variable width_room_in_meters
  5) multiply the two number inputs by each other and store into a new variable square_meters
  6) convert the vakue of square_meters into square feet (1 square meter == 10.7639 square feet)
  7) print the results of the math done above.

=end

SQMETERS_TO_SQFEET = 10.7639

puts "=> Enter the length of the room in meters:"
length_room_in_meters = gets.chomp.to_i

puts "=> Enter the width of the room in meters:"
width_room_in_meters = gets.chomp.to_i

area_of_room = length_room_in_meters * width_room_in_meters

puts "=> The area of the room is #{area_of_room} square meters (#{(area_of_room * SQUARE_METERS_TO_FEET).round(2)} square feet)"

# SQFEET_TO_SQINCHES = 144                #Further Exploration Code
# SQINCHES_TO_SQCENTIMETERS = 6.4516

# puts "=> Enter the length of the room in feet:"
# length_room_in_feet = gets.chomp.to_i

# puts "=> Enter the width of the room in feet:"
# width_room_in_feet = gets.chomp.to_i

# area_of_room = length_room_in_feet * width_room_in_feet

# puts "The area of the room is #{area_of_room} square feet, #{area_of_room * SQFEET_TO_SQINCHES} square inches and #{(area_of_room * SQFEET_TO_SQINCHES) * SQINCHES_TO_SQCENTIMETERS} square centimeters."
