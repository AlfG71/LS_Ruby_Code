# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

=begin
  Problem:

  -Create a program that asks the user for input
  -The input asked is for a word or multiple words
  -The program will return the value of the number of characters in the input string
  -Spaces are not to be counted as characters in the input string

  Examples:   

input:
  => Please write word or multiple words: walk
output:
  => There are 4 characters in "walk".
input:
  => Please write word or multiple words: walk, don't run
output:
  => There are 13 characters in "walk, don't run".

  Data Srtructures:

  Input  = String
  Output = String

  Algorithm:

  1) Ask the user for input
    -puts "=> Please write word or multiple words:"
  2) Store input in a new variable user_input
  3) If multiple words in the input, take away the spaces
    -either iterate over the string and skip space characters
    -append all charaters into a new collection object
  4) Count all the characters in the new collection object
  5) Store the count in a new variable word_count
  5) Return the numbers of characters outputting a string stating that value 
    -puts "=> There are #{word_count} characters in #{user_input}."

=end

puts "=> Please write word or multiple words:"
user_input = gets.chomp.chars
resulting_chars = []

user_input.each do |chars|
  unless chars.include?(' ')
    resulting_chars << chars
  end
end

word_count = resulting_chars.count

puts "=> There are #{word_count} characters in #{user_input.join}."

# Refactored

# puts "Please write word or multiple words:"
# input = gets.chomp
# a = input.split.join

# puts "There are #{a.length} characters in #{input}."

# Alternate solution

def words
  puts "Please write word or multiple words:"
  answer = gets.chomp.split

  puts "There are #{answer.join.size} characters in '#{answer.join(' ')}'."
end

words
