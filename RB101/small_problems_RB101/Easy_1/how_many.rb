#Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
	
def count_occurrences(vehicles)
	vehicle_count = Hash.new(0)

	vehicles.each do |v|
	vehicle_count[v] += 1
  end

  vehicle_count.each do |v, c|
    puts "#{v} => #{c}"
  end  
end 

count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

#

=begin
	P (Understand the problem)
	  
	  -Define a counting method for an array named count_ocurrences(vehicles)
	  -The method will count how many times each element appears in the array
	  -The words in the array are case sensitive
	  -The method will print out each element along with the number representing the number of times it appears in the array
	
	E (Examples)
	   
	   -Expected output:
	
	   -car => 4	
	   -truck => 3	
	   -SUV => 1	
	   -motorcycle => 2
	
	D (Data Structures)
	    Input:
	      -Array
	      -Method

	    Output
	      -Integers
	      -Strings

	A (Algorithm/pseudo code) 

	  -define a method called count_ocurrences(parameter)
	  -iterate over the elements of the array
	  -count how many of each array element
	  -print each array element along with the number of times it appears in the array  

	C	(Code)
    -vehicle_count = Array.new(0)
	  -def count_ocurrences(vehicles)
       vehicles.each do |vehicles|
         vehicle_count[] += 1
         end
       vehicle_count.each do |v, c|
         puts "#{v} => #{c}"
         end  
	   end 
	  -
end







================================================
# Write a method that counts the number of occurrences of each element in a given array.

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end


puts count_occurrences(vehicles)
=end