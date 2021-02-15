# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

=begin
  
Problem: 
-Create a method that takes a string argument and returns a hash with three key value pairs
-the hash keys will represent lowercase, uppercase and neither for each character in the string argument

# Examples

-letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
-letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
-letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
-letter_case_count('') == { lowercase: 0, uppercase: 0, 

Data Structures:

Input  = String
Output = Hash

Algorithm:

1) create a method definition
  -letter_case_count(str)

2) create a new hash object
  -count_hash = {}

3) iterate over the argument and assign a value of 1 for each instance of a lowercase, uppercase or neither character
  -str.chars.each do |char|
    -if char == char.upcase
      count_hash[uppercase] += 1
    -elsif char == char.downcase
      count_hash[lowercase] += 1
    -else
      count_hash[neither] += 1

 4) return new hash object           

=end

# def letter_case_count(str)
#   count_hash = {lowercase: 0, uppercase: 0, neither: 0 }

#   str.each_char do |char|
#     if char.to_i != 0 || char == '+' || char == ' '
#       count_hash[:neither] += 1
#     elsif char == char.upcase
#       count_hash[:uppercase] += 1
#     else char == char.downcase
#       count_hash[:lowercase] += 1
#     end
#   end
  
#   count_hash
# end


#  def letter_case_count(string)
#   hash = {
#     lowercase:  0,
#     uppercase:  0,
#     neither:  0
#     }
#   string.each_char do |char|
#     if /^[a-z]*$/ === char
#       hash[:lowercase] += 1
#     elsif /^[A-Z]*$/ === char
#       hash[:uppercase] += 1
#     else
#       hash[:neither] += 1
#     end
    
#   end

#   hash
# end

def letter_case_count(str)            # alternate solution second go around
  result = { lowercase: 0, uppercase: 0, neither: 0 }

  str.each_char do |char|
    if !('a'..'z').include?(char.downcase)
      result[:neither] += 1
    elsif char.upcase == char
      result[:uppercase] += 1
    else
      result[:lowercase] += 1
    end
  end
  
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
