# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# def cleanup(str)
#   str.gsub(/[^a-z]/i, ' ').squeeze
# end

ALPHABET = ('a'..'z').to_a

def cleanup(str)
  arr_of_words = str.chars
  result = []

  arr_of_words.each do |char|
  	if ALPHABET.include?(char)
  		result << char
  	else
  		result << ' ' unless result.last == ' '
  	end
  end
  result.join 			
end

p cleanup("---what's my +*& line?") #== ' what s my line '









# # Write a function

# # triple_double(num1, num2)
# # which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

# # If this isn't the case, return 0

# Examples
# triple_double(451999277, 41177722899) == 1
# # num1 has straight triple 999s and  num2 has straight double 99s

# triple_double(1222345, 12345) == 0
# # num1 has straight triple 2s but num2 has only a single 2


# def triple_double(num1, num2)
#   triples = []
#   arr_of_nums = num1.digits.reverse
#   int_num = []
  
#   arr_of_nums.each_with_index do |num, index|
#     int_num << num
#       if int_num.last == arr_of_nums[index + 1]
#         int_num << num
#       else
#       	int_num = []
#       	next 
#       end
#       triples << int_num
#       int_num = []
#   end
#   triples
# end

# p triple_double(451999277, 41177722899) #== 1
# # triple_double(1222345, 12345) == 0