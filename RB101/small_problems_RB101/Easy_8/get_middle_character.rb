# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

=begin

Problem

  -create a method that takes a string argument
  -it returns the middle character or characters in the string argument depending on if the original string is odd (1 character returned) or even (2 characters returned) in length

Examples:

  -center_of('I love ruby') == 'e'
  -center_of('Launch School') == ' '
  -center_of('Launch') == 'un'
  -center_of('Launchschool') == 'hs'
  -center_of('x') == 'x'

Data Structures

  Input  = string
  Output = string

Algorithm

  1) create a method with a string parameter
       -center_of(str)
  2) check the length of str 
      -if str length == odd
    	  -return the 1 middle character in str
          -str[str.length/2 + 1]
      -elsif str length == even
        -return the 2 middle characters	in str
          -str[(length/2), (str.length/2 + 1)]
    
=end

def center_of(str)
  if str.length.odd?
    str[str.length/2]
  else str.length.even?
    str[(str.length/2 - 1)..(str.length/2)]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
