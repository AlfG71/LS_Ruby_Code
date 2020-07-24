# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

=begin

Problem

-write a method that takes a string as an argument
-the string will have one or more words separated by a space
-it will count each word and organize them by size into a new hash
-the method will return the hash with the keys as integers representing the number of characters in the words and the values representing the number of words with the number of characters represented by the keys

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}     	

Data

Input  = string
Output = hash

Algorithm

-define a method with a string parameter
-create a new collection object to store the individual words in the string
-convert the the individual words of the string into elements inside the new object
 -iterate over the individual words in the new collection object and evaluate them by their length 
-create a new collection object to store key value pairs (hash)
  -in the new hash the keys will represent the integer values of the length of each word
  -the values will be number of words that have the integer value of the key
-return the new hash
	
Code	
=end

def word_sizes(str)
  words     = str.split
  word_size = []
  word_hash = {}
  
  words.each do |each_word|
  	word_size << each_word.length
  end

  word_size.each do |element| 
    if word_hash[element].nil?
    	word_hash[element] = 1
    else
    	word_hash[element] += 1
    end
  end

  word_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# def word_sizes(str)
#   words     = str.split
#   word_size = []
#   word_hash = Hash.new(0) # {4 => 0} 
  
#   words.each do |each_word|
#     word_size << each_word.length

#   end

#   word_size.each do |element|
#     p word_hash
#       word_hash[element] += 1 # word_hash = { 4 => 1} 
#     p word_hash[element], "this is my element: #{element}"
#     sleep(2)
#   end
#   word_hash
# end