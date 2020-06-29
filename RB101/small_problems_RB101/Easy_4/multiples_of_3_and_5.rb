# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

=begin
	P
	-write a method multisum(int) that takes an integer as a parameter
	-the method will first evaluate all the multiples of 3 and 5 and return them
	-the method will then take the multiples and add them together
	-it will then return that sum as the return value of the method

	E
	Examples

		multisum(3) == 3
		multisum(5) == 8
		multisum(10) == 33
		multisum(1000) == 234168

	D
	Input
	  -Integer
	Output
	  -Integer

	A
	-create a new method multisum(int)
	  -evaluate the integer for multiples of 3 and 5
	  -place the selection of those multiples of 3 and 5 in a new collection object
  -evaluate the elements inside the new collection object and add them together
  -return the total of that evaluation

	C
	def multisum(int)
		all_numbers = []
		  
		  loop do |int|
      all_numbers << int
      break if int == 1
      int -= 1
      end

    multiples = []  
    all_numbers.each do |element|
      counter = 1
      multiples << element if int % 3 == 0 && int % 5 == 0
    end  
    multiples.sum 
	  end

=end

def multisum(int)
	all_numbers = []
	
	loop do
    all_numbers.unshift(int)
    break if int == 1
    int -= 1
  end
  
  all_numbers
  multiples = []
  
  counter = all_numbers.length 
 
  loop do 
  	multiples.unshift(all_numbers[counter - 1]) if all_numbers[counter - 1] % 3 == 0 || all_numbers[counter - 1] % 5 == 0 
  	break if counter == 1
  	counter -= 1  
  end  
 
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
