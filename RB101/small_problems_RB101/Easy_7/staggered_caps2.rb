# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

=begin

Problem:

-Create a program that takes a string as an argument and converts all the characters that have letter values and alternates their capitalization
-It ignores the characters whose values are not included in the alphabet
-It alternates capitalization based on the last character whose value is included in the alphabet

Examples:  

-staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
-staggered_case('ALL CAPS') == 'AlL cApS'
-staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

Data Structures:

Input  = String
Output = Strig

Algorithm:

1) Create a constant of all the alphabet characters
  -ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

2) Create a method that takes a string argument
  -staggered_case(str)

3) Convert the argument into an array of individual characters
  -str.chars

4) Iterate over the new array and compare the characters
  -str.chars.each_with_index do |char, index|
    if str.chars.include(ALPHABET) && str.chars[index] == 0
      -char.upcase!
    elsif    

=end

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(str)
  counter = 0
  resulting_string = ''
  array_of_characters = str.chars

  array_of_characters.each do |char|
    if ALPHABET.include?(char)
      if counter.even?
        resulting_string << char.upcase
      else counter.odd?
        resulting_string << char.downcase
      end
      counter += 1    
    else
      resulting_string << char
    end
  end

    resulting_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
