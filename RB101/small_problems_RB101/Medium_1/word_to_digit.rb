# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

=begin

Problem:
  - Create a method that takes as string argument
  - The string is a sentence
  - The method will return the same sentence with any sequence of the words of numbers converted to a string of their corresponding digits:
                                -'zero' = '0'
                                -'one'  = '1'
                                -'two'  = '2'
                                -'three'= '3'
                                -'four' = '4'
                                -'five' = '5'
                                -'six'  = '6'
                                -'seven'= '7'
                                -'eight'= '8'
                                -'nine' = '9'

Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data Structures:

Input  = String
Output = String

Algorithm:

1) Create a method definition
     -word_to_digit(str)
2) Create a CONSTANT hash of numbers and strings
     -NUMBERS 
3) Iterate over an array of str (str.chars (word))
   - if word is included in NUMBERS
   	-return it's corresponding numerical string value
   -else
    -return word	
4) Return new transformed string    

=end

NUMBERS = {'zero' => '0',
           'one'  => '1',
           'two'  => '2',
           'three'=> '3',
           'four' => '4',
           'five' => '5',
           'six'  => '6',
           'seven'=> '7',
           'eight'=> '8',
           'nine' => '9'}

# def word_to_digit(str)
# 	string_with_numbers = []
#   str.split.each do |word|
#   	string_with_numbers << word.gsub(/\b#{word}\b/, NUMBERS[word])
#   end

#   # gsub(/NUMBERS/ NUMBERS[])
           	
# end           

def word_to_digit(str)
	string_with_numbers = []

	str.split.each do |word|
    if NUMBERS.include?(word)
      string_with_numbers << NUMBERS[word]
    else
    	string_with_numbers << word
    end
  end
	
	string_with_numbers.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# ALTERNATE SOLUTION SECOND GO AROUND 

=begin
  input: string
  output:string with number words converted into string numbers

  rules:
  -

  Algorithm:
  -create a constant of the number words according to their index
  -assign a new variable to an empty string to collect the result
  -create an array of words from the argument
  -iterate over each word
  -compare each word with the elements in the constant
    -if the word is a number and included in the constant
      -replace that word with its string number by using its index in the constant converted into a string
    -else 
      -keep the original word  
  -return the new string    
=end

NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(str)
  result = []
  arr_of_words = str.split

  arr_of_words.each_with_index do |word, index|
    if word.include?('.')
      p new_word = word.sub('.', '')
      if NUMBERS.include?(new_word)
        result << NUMBERS.index(new_word).to_s + '.'
      else
        result << word
      end
    elsif NUMBERS.include?(word)
      result << NUMBERS.index(word).to_s
    else
      result << word
    end
  end

  result.join(' ')
end