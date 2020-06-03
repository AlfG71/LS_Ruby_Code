words = "the flintstones rock"
words_array = words.split
p words_array.map {|str| str.capitalize}.join(' ')

# As we have seen previously we can use some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:


# Write your own version of the rails titleize implementation.

=begin
  P  (understand the Problem)
       -Write a program that takes a string
       -The program will have each word in the string capitalized
       -Print the capitalized string

  E  (Examples)
     -words = "the flintstones rock"
     -would be:

     -words = "The Flintstones Rock"

  D  (Data structures)
       Input:
         - String
       Output:
         -String

  A (Algorithm)
      -initialize a variable (words) with the value of string "the flintstones rock"
      -initialize new variable (word_array) 
      -populate new array with each individual word of the string
      -write method to capitalize each array string element
      -convert new array into capitalized string

  C	(Code)
      words = "the flintstones rock"
      words_array = words.split
      words_array.map {|str| str.capitalize}.join(' ')

=end