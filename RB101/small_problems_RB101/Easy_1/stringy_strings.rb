
# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

=begin
  P  (Understand the problem)
      -We have to write a method that takes one argument
      -The argument must be a positive integer
      -The method returns a string
      -The returned string must be of alternating 1s and 0s always starting with the number 1
      -The length of the returned string must match the integer taken as an argument on the method
  
  E  (Examples)
      -puts stringy(6) == '101010'    => true    
      -puts stringy(9) == '101010101' => true
      -puts stringy(4) == '1010'      => true
      -puts stringy(7) == '1010101'   => true

  D  (Data structures)
      Input:
        -Method
        -Integer

      Output:
        -String

  A  (Algorithm)
      -Define a method called stringy(integer)
      -convert the integer argument into a string 
      -the string alternates 1s and 0s and equals the length of the value of the integer

  C  (Code)

=end

def stringy(size)
	numbers = []

	size.times do |index|
  number = index.even? ? 1 : 0
  numbers << number
end
	numbers.join
end

puts stringy(6) == '101010'        
puts stringy(9) == '101010101' 
puts stringy(4) == '1010'      
puts stringy(7) == '1010101'