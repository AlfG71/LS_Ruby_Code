# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,  #LS solution
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

 DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(str)
  new_arr = str.chars
  arr_of_int = new_arr.map {|num| DIGITS[num]}
   
  value = 0
  arr_of_int.each {|int| value = value * 10 + int}

  value
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570










=begin 
  P
  -create a method that takes a string of digits as an argument
  -the body of the method will return the string as an integer representing the same characters
  -cannot use to_i or Integer() (standard conversion) methods
  -calculate the result by analyzing the string characters

  Examples
  -string_to_integer('4321') == 4321
  -string_to_integer('570') == 570

  D
  Input
    -String
  Output
    -Integer

  A
  -define method string_to_integer(str)
  -convert string characters into an array of elements with the string characters representing each element in the new array
  -evaluate the array elements 
  
  C
	def string_to_integer(str)
	  digits = str.chars.map { |char| DICTIONARY_HASH[char] 
	  
	  value = 0
	  digits.each { |digit| value = 10 * value + digit }
	  value
	end

=end
# require 'pry'

# DICTIONARY_HASH = {
#   '0' => 0,
#   '1' => 1,
#   '2' => 2,
#   '3' => 3,
#   '4' => 4,
#   '5' => 5,
#   '6' => 6,
#   '7' => 7,
#   '8' => 8,
#   '9' => 9,
# }

# def string_to_integer(str)
#   new_arr = str.chars
#   int_arr = new_arr.map {|char| DICTIONARY_HASH[char]}

#   value = 0                                         =>  10 * 0 + 4 -> 4
#   int_arr.each {|num| value = 10 * value + num}     =>  10 * 4 + 3 -> 43
#   value                                             =>  10 * 43 + 1 -> 431
# end
 
# p string_to_integer('4321') == 4321
# p string_to_integer('570')  == 570

  
