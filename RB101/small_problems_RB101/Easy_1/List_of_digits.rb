def digit_list(num)
  num.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     
puts digit_list(7) == [7]                     
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] 
puts digit_list(444) == [4, 4, 4]             


# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number

=begin
 Problem:

 -Create a method that takes one argument
 -The argument is a positive integer
 -The method will return a list of the digits that comprise the integer argument 

 Example:
 puts digit_list(12345) == [1, 2, 3, 4, 5]      => true
 puts digit_list(7) == [7]                      => true
 puts digit_list(375290) == [3, 7, 5, 2, 9, 0]  => true
 puts digit_list(444) == [4, 4, 4]              => true

 Data Structure:
 Input  = Integer
 Output = Array of Integers

 Algorithm
 1)Create a method definition with on integer argument digit_list(num)
 2)Initialize new empty array
 3)Break down the number into individual digits
  a) transform integer into a string 
  b) place the newly created string of integers into the array
  c) transform new string characters into integers
 4)Place the individual digits into a new array
 5)Return the new array 

 Code
  
  def digit_list(num)
    num.digits.reverse
  end


  
=end

