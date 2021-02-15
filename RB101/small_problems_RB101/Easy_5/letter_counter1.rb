# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

=begin

Problem:
-Create a method that takes a string of one or more words separated by a space as an argument
-It will return a hash whose keys will represent the the length of the individual words and the values will represent the total number of words with the length given by the key
-Words are denoted by consecutive characters that do not include a space
-If the string argument if empty, and empty hash will be returned  

Examples:

-word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
-word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
-word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
-word_sizes('') == {}

Data Structures:

Input  = String
Output = Hash

Algorithm:

1) create a method definition
  -word_sizes(str)

2) Create a new empty hash object
  -word_count = Hash.new

3) Break the string argument into separate words
  -str.split

4) Iterate over str.split and count how many characters are in each individual word
  -str.split.each 

5) Add the value of the individual word as a key to the word_count hash and the instance of the word as a value       
=end

def word_sizes(str)
  word_count = Hash.new

  str.split.each do |word|
    if word_count.include?(word.length)
      word_count[word.length] += 1
    else
      word_count[word.length] = 1
    end
  end
  
  word_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# Alternative solution

# def word_sizes(str)
#   word_count = Hash.new(0)

#   str.split.each do |word|
#       word_count[word.length] += 1
#   end
#   word_count
# end
