puts "Please write word or multiple words:"
input = gets.chomp
a = input.split.join

puts "There are #{a.length} characters in #{input}."

# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

=begin 
  P  (understand the Program)
       -write a program that takes input from the user
       -the input will be a string od one or more words
       -the program will then output the number of characters in the inputed string
       -spaces in the string do not count for the final character result

  E  (Examples)
     - input:

     - Please write word or multiple words: walk
     - output:

     - There are 4 characters in "walk".
     - input:

     - Please write word or multiple words: walk, don't run
     - output:

     - There are 13 characters in "walk, don't run".


  D  (Data structures)
       Input:
         -String
       Output:
         -String

  A  (Algorithm)
       -ask user for a string input "Please write word or multiple words:"
       -take the string input and make sure there are no spaces in between words if there are multiple words
       -count the number of characters in the string 
       -return the spaces to the original string if there were multiple words 
       -output the number of characters in the string plus the original string
         -"There are #{number of characters} characters in #{String}."

  C  (Code)
     puts "Please write word or multiple words:"
     input = gets.chomp
     a = input.split.join
     puts "There are #{a.length} characters in #{input}."


=end