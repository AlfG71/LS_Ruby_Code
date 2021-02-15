# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

=begin
Problem:

-Create a method that takes a string argument and returns a new string with the same value as the argument but every other character in the string capitalized
-Capitalization starts with the first character and alternates on every other character
-empty spaces and non letter characters count as character values in switching the cpitalization for the rest of the characters

Examples:

-staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
-staggered_case('ALL_CAPS') == 'AlL_CaPs'
-staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'  

Data Structures:

Input  = String
Output = String

Algorithm:

1) create a method that takes a string argument
  -staggered_case(str)
 
2) convert the string object into a collection of individual characters   
  -str.chars

3) iterate over the individual characters and capitalize every other one starting at the first element
  -even_index
  -odd_index
  -loop do char.upcase even_index
    char.downcase odd_index

4) convert the character collection back into a string

5) return the new string object  
  
=end

# def staggered_case(str)
#   array_of_strings = str.chars

#   0.upto(array_of_strings.length - 1) do |index|
#     if index % 2 == 0
#       array_of_strings[index].upcase!
#     else 
#       array_of_strings[index].downcase!
#     end
#   end

#   array_of_strings.join
# end

# def staggered_case(string)          # Alternate solution
#   arr_of_char = string.chars 
#   empty_string = ''

#   arr_of_char.each_with_index do |char, index|
#     if index.even?
#       empty_string << char.upcase
#     elsif index.odd?
#       empty_string << char.downcase
#     else
#       empty_string << char
#     end
#   end
#   empty_string

# end

def staggered_case(str)    # Alternate solution second go around
  str.chars.map.with_index do |letter, index|
    if index % 2 == 0
      letter.upcase
    else
      letter.downcase
    end
  end.join 
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
