# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

=begin 
  P
  -write a method that takes a string argument ascii_value(str)
  -the method will evaluate the ASCII values of each individual character on the argument string and return the sum of those values
  -we can use String#ord to determine the individual string ASCII values

  E
  -ascii_value('Four score') == 984
	-ascii_value('Launch School') == 1251
	-ascii_value('a') == 97
	-ascii_value('') == 0

  D
  Input
    -string
  Output
    -integer

  A
  -begin method definition ascii_value(str)
    -create new object str_arr
    -break the string into indivual characters and place into new object str_arr
    -find the ascii value for each character in str_arr
    -add up all the individual character values
    -return the sum 
  -end method definition

  C
=end

def ascii_value(str)
	str_arr = str.chars 
  
  number_array = str_arr.map {|char| char.ord}.sum 
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0