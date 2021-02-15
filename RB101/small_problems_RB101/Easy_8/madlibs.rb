# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

=begin

Problem

  -Create a program that asks the user for 4 different words (a noun, a verb, an adverb and an adjective)
  -The program will have the template of the story which will be filled in with the words entered by the user
 
Example

  -Enter a noun: dog
  -Enter a verb: walk
  -Enter an adjective: blue
  -Enter an adverb: quickly
  
  -Do you walk your blue dog quickly? That's hilarious!

Data Structure

  Input  = String
  Output = String 

Algorithm

  -created a program that asks the user for 4 different types of words
  -create a template story to print
  -fill in the story with the words entered by the user
  -print the story and words together

  Pseudocode

    -create a story line with spaces for the input words
    -prompt user 4 times
      -initialize a new variable for each entered word
    -interpolate the entered words into the story line string
    -print the story line with the interpolated words

Code
=end

def prompt(msg)
	if msg.start_with?('a')
	  puts "Enter an #{msg}:"
  else
	  puts "Enter a #{msg}:"
	end
end

prompt("noun")
noun = gets.chomp

prompt(" verb")
verb = gets.chomp

prompt("adjective")
adjective = gets.chomp

prompt("adverb")
adverb = gets.chomp

puts "That's #{adjective}...  #{noun} #{verb} in a #{adverb} way!"

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!