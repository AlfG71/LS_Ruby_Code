# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

=begin 
  P  (understand the Problem)
    -given a nested array
    -we need to use the map method
    -use it to return a new array identical in structure to the original
    -but each integer in the new array will have 1 added to its total

  E  (Examples)
    -    [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
    # => [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]
  
  D  (Data structures)
    Input:
      -Array
    Output
      -Array

  A  (Algorithm)
    -use map to create a new array arr_doubled
    -iterate over each sub_hash
    -add a value of 1 to each value in each sub-hash
    -output the new nested array with the new values

  C  (Code)

=end

# arr_doubled = arr.map.each {|sub_hashes| p sub_hashes}
# 	# sub_hashes.each_value {|value| value + 1}
# 	# end
 
#  p arr_doubled.each_value {|value| value + 1}

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

result = arr.map do |sub_hash| # {a: 1}
  new_hash = {}
  
  sub_hash.each_pair do |k, v|
    new_hash[k] = (v + 1)    # new_hash = {a: 2} 
  end
  
  new_hash
end

p result
