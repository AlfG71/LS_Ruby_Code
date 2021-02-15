# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

=begin

Problem
  
  -Create a method that takes a string argument
  -the method will return the original argument string with the cases of each letter opposite of their original case
    -uppercase letters will be lowercase and viceversa

Example:

  -swapcase('CamelCase') == 'cAMELcASE'
  -swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

Data Structure

  Input  = string
  Output = string

Algorithm

  -create a program that takes a String object as an argument
  -evaluate each letter element in the collection object and change it to the opposite value, if it is uppercase change to lowercase and viceversa   

  Pseudocode

    1) Define a method with a string parameter
      -swapcase(str)  
    
    2) Convert argument into an array of its individual characters and store it into a new array
      -collection_arr = str.chars
    
    3)iterate over each character in the array 
      -collection_arr.each do |char|
      -if the character is lowercase
      	-turn into an uppercase character
      -if the character is uppercase
        -turn into a lowercase character
      -if it is neither
        -leave unchanged
    
    4) convert new array back into a string

    4) return transformed string object

=end

# def swapcase(str)
#   collection_arr = []

#   str.chars.each do |char|
#     if char == char.upcase
#       collection_arr << char.downcase
#     elsif char == char.downcase
#       collection_arr << char.upcase
#     elsif 
#       collection_arr << character
#     end
#   end
        
#   collection_arr.join        
# end

def swapcase(str)           # alternate solution second go around
  arr_of_words = str.split

  result = arr_of_words.map do |word|
    word.chars.each do|char|
      if char == char.upcase 
        char.downcase!
      elsif char == char.downcase
        char.upcase!
      else
        char
      end
    end
  end
      
  result.map {|word| word.join}.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# def swapcase(str)           # Alternate solution
#   final_str = ''

#   str.each_char do |letter|
#     if ('A'..'Z').include?(letter)
#       final_str << letter.downcase!
#     elsif ('a'..'z').include?(letter)
#       final_str << letter.upcase!
#     else 
#       final_str << letter
#     end
   
#   end
#   final_str
# end