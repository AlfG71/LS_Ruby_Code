# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.


=begin
  P (understand the Problem)
    -we need to write a method that takes a string as an argument
    -the method will evaluate if the string reads the same backwards and forwards
    -if it reads the same then the method will return a boolean value of true
    	-it will return false otherwise
    -the case of string characters matters
    -punctuation and spaces in the string matter as well

  E (Examples)
    -palindrome?('madam') == true
    -palindrome?('Madam') == false          # (case matters)
    -palindrome?("madam i'm adam") == false # (all characters matter)
    -palindrome?('356653') == true

  D (Data structures)
    Input:
      -String
    Output:
      -String  

  A (Algorithm)
    -create a method (palindrome?(str)) definition that takes a string argument
    -the method body will evaluate the string to true if the string reads the same forward and backward

  C (Code)
    def palindrome?(str)
    	str == str.reverse
    end

	
=end

 def palindrome?(str)
   p str == str.reverse
 end

 palindrome?([1,2,3,2,1]) == true
 palindrome?('Madam') == false          # (case matters)
 palindrome?("madam i'm adam") == false # (all characters matter)
 palindrome?('356653') == true
