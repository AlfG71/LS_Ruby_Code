# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

=begin

Problem:
-Create a method that takes a string of one or more words separated by a space as an argument
-It will return a hash whose keys will represent the the length of the individual words and the values will represent the total number of words with the length given by the key
-Words are denoted by consecutive characters that do not include a space
-If the string argument if empty, and empty hash will be returned  
-You must exclude non-letter characters from the length value of each word: the length of "it's" is 3, not 4

Examples:

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

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

3a) Remove all non letter characters from each individual word
  -str.split.each  

4) Iterate over str.split and count how many characters are in each individual word
  -str.split.each 

5) Add the value of the individual word as a key to the word_count hash and the instance of the word as a value       
=end

def word_sizes(str)
  word_count = Hash.new(0)
  array_of_words = str.downcase.split

  non_letters_removed = array_of_words.each do |word|
    word.delete!('^a-z')
  end

  non_letters_removed.each do |word|
    if word_count.include?(word.length)
      word_count[word.length] += 1
    else
      word_count[word.length] = 1
    end
  end

  word_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
