# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

=begin
Problem:

-Create a method that takes an array of strings
-It will return an array of the same string values but with any vowels removed from the original string

Examples:

-remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
-remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
-remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']	

Data Structures:

Input  = Array
Output = Array

Algorithm:

1) Create a method definition
  -remove_vowels(arr)

2) Iterate over the array argument deleting all the vowels in the string inside the array
  -arr.each {|str| str.chars.delete('aeiou')}.join

3) Return new array of stings without vowels    
	
=end

# VOWELS = %w(a e i o u).to_a

# def remove_vowels(arr)    #alternate solution second time around
#   result = []
#   current_str = ''

#   arr.each do |word|
#     word.chars.each do |letter|
#       if VOWELS.include?(letter.downcase)
#         next
#       else
#         current_str << letter
#       end
#     end
#       result << current_str
#       current_str = ''
#   end
#   result
# end

def remove_vowels(arr)                # alternate solution two
  arr.each do |word|
    word.gsub!(/[a, e, i o, u]/i, '')
  end  
end

# def remove_vowels(arr)
# 	arr.each do |str|
# 		str.delete!('aeiouAEIOU')
# 	end
# end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# def remove_vowels(arr)                          #ALTERNATE SOLUTION
#   arr.join(' ').gsub(/[aeiou]/i, '').split(/ /)
# end