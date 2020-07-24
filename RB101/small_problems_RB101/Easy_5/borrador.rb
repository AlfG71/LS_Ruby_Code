# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

=begin
Problem
  -write a method that takes a string as an argument
  -the method will evaluate the ASCVII value of every character in the string and return the sum of all of those ASCII values
  -may use String#ord to determine the values of the string characters

Examples
  -ascii_value('Four score') == 984
  -ascii_value('Launch School') == 1251
  -ascii_value('a') == 97
  -ascii_value('') == 0

Data 
  Input  = string
  Output = integer

Algorithm
  -define a method thaat takes a string as a parameter
  -evaluate the individual characters of the string argument for their ASCII values
    -use the String#ord method to get each character value
    -place those values inside a collection object
    -add up all the individual values within the new object
  -return the sum of the values as an integer

Code
=end

def ascii_value(str)
  result = str.chars.map {|each_letter| each_letter.ord}
  result.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0