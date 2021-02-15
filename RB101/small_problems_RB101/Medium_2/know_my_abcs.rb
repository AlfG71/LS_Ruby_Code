#Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

=begin

# A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Problem: 

 - Create a method that takes a string argument
 - It will check to see if the characters that compose the string are included in spelling blocks
 - Each block consists of two letters
 - The method will return true if none of the blocks are used more than once to make up the string
 - It will return false otherwise
 - Case sensitive

Examples:

block_word?('BATCH') == true   B:O = 1, N:A = 1, G:T = 1, C:P = 1, H:U = 1 => true
block_word?('BUTCH') == false  B:O = 1, H:U = 1, G:T = 1, C:P = 1, H:U = 2 => false
block_word?('jest') == true

Data Structures:

Input  = String
Output = Boolean

Algorithm:

1) Create a CONSTANT to hold the spelling blocks
     -SPELLING_BLOCKS = {}

2) Create a method definition
     -block_word?(str)

3) Transform str into characters
     -str.chars

4) Iterate over str characters and compare against the pairs in SPELLING_BLOCKS (char)
    - if a SPELLING_BLOCKS key includes the char
    	- increment the value of that key by one

5) Check to see if any of the values in SPELLING_BLOCKS is higher than 1
    - if true
    	  -return false
    -else
       -true 	  

=end

SPELLING_BLOCKS = {['B', 'O'] => 0, 
	                 ['X', 'K'] => 0, 
	                 ['D', 'Q'] => 0, 
	                 ['C', 'P'] => 0, 
	                 ['N', 'A'] => 0, 
	                 ['G', 'T'] => 0, 
	                 ['R', 'E'] => 0, 
	                 ['F', 'S'] => 0, 
	                 ['J', 'W'] => 0, 
	                 ['H', 'U'] => 0, 
	                 ['V', 'I'] => 0, 
	                 ['L', 'Y'] => 0, 
	                 ['Z', 'M'] => 0
                    }

def block_word?(str)
	string_of_characters = str.chars

	string_of_characters.each do |char|
    if SPELLING_BLOCKS.include?(char)
    	SPELLING_BLOCKS[char] += 1
    end
	end
	string_of_characters
end

p block_word?('BATCH')
p SPELLING_BLOCKS