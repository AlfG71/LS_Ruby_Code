# Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

# You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

=begin

Problem

  -create a function that takes a string argument and returns an array with every word of the original string followed by the number of its length
  -assume the words in the string are separated by one space
  -assume that any substring of non-space characters is a word or part of a word

Examples

  -word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

  -word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

  -word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

  -word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

  -word_lengths("") == []

Data Structure

  Input  = string
  Output = array

Algorithm

  1) Create a method with a string argument
       -word_lengths(str)

  2) Create a new array object to collect the result
       -resulting_array = []

  3) Divide str into separate words
       -str.split

  3a) Create a new Hash to collect the information on str.split
        -hash_of_lengths = {}     

  4) Iterate over str.split
       -assign each word as a key and each word length as a value to hash_of_lengths

  5) Iterate over hash_of_lengths and append each key value pair as its own string into resulting_array
       -   

  6) Return resulting_array                       

=end

# def word_lengths(str)
#   resulting_array = []
#   hash_of_lengths = {}
#   individual_words = str.split

#   individual_words.each do |word|
#     hash_of_lengths[word] = word.size
#   end

#   hash_of_lengths.each_pair {|word, word_size| resulting_array << "#{word} #{word_size}"}

#   resulting_array
# end

def word_lengths(str)           #Alterante Solution
  str.split.map {|word| word << " #{word.length}".to_s}
end



p word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []
