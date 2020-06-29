# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

=begin 
  P  (understand the Problem)
    -given a nested array
    -we want to compare the values in each sub-array and return a new nested array 
    -the sub-arrays will be sorted indescending order

  E  (Example)
     arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
     # => [['c', 'b', 'a'], [3, 2 ,1], ['green', 'blue', 'black']]
  D  (Data structures)
    Input
      -array
    Output
      -array

  A  (Algorithm)
    -iterate over each sub-array
    -compare the values of each element inside the sub-arrays
    -return a new array with the sub-arrays sorted in descending order

  C  (Code)
    sorted_arrays = arr.map {|sub_arr| sub_arr.sort {|a, b| b <=> a }}

=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
sorted_arrays = arr.map do |sub_arr| 
									sub_arr.sort do |a, b| 
										b <=> a 
									 end
								 end

p sorted_arrays