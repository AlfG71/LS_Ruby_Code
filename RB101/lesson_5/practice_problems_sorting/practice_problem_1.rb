# How would you order this array of number strings by descending numeric value?

# arr = ['10', '11', '9', '7', '8']

=begin 
  P  (understanding the Problem)
    -create a method that takes an array as an argument
    -the array contains number strings
    -the method will take the strings and compare them by their integer value
    -it will return the strings back to the array in order from highest to lowest 

  E  (Examples)
		arr = ['10', '11', '9', '7', '8'] 
    method(arr) => ['11', '10', '9', '8', '7']

  D  (Data structures)
    Input
      -array
    Output
      -array

  A  (Algorithm)
    -create a method that takes an array as an argument
    -convert the strings in the array into integers
      -compare the integer values and sortfrom highest to lowest number
      -return the newly sorted array 

  C  (Code)
    def sorted_strings(arr)
    	arr.map do |n|
    		n.to_i.sort.reverse
    	end
    end


=end
arr = ['10', '11', '9', '7', '8'].sort do |a, b|
	b.to_i <=> a.to_i
end

p arr