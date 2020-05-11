
def reverse_sentence(word)
	word = []
	#str = ''
	word.reverse_each {|word| p "#{word} "}

	#str.split.reverse do
  #str.reverse {|x| puts x, ''}
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World 	Hello'
puts reverse_sentence('Reverse these words') == 	'words these Reverse'

# * Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# * The tests cases should print true.

# =begin
# *  Problem
# 	-A method taking one string argument
# 	-The method returns a new string with the words from the original string argument in reverse order

# * Example test cases
# 	-puts reverse_sentence('') == ''
# 	-puts reverse_sentence('Hello World') == 'World 	Hello'
# 	-puts reverse_sentence('Reverse these words') == 	'words these Reverse'

# * Data structure
# 	-Input: String

# 	-Output: String

# * Algorithm
# 	1. Define method with one string argument
# 	2. Use method to reverse the words in the string within the method definition
# 	3.Test method 
	
#  * Code
