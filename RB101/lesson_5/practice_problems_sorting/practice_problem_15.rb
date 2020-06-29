# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

result = arr.select do |sub_hash|
	new_hash = sub_hash.select do |k, v|
 		v.all? {|num| num.even?}
 	end
  if new_hash.length == sub_hash.length
  	sub_hash
  else
  end 
end

p result


=begin
  P
  -given a nested (multidimensional array)
  -iterate over the sub_hashes and select the hashes where all the integers are even
  -return the new sub_hashes into a new array

  E
  [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
  outputs => [{e: [8], f: [6, 10]}]

  D
  Input
    -array
  Output
    -array

  A
  -iterate over the sub_hashes in the outer array
  -remove the hashes that contain odd numbered values 
  OR
  -select the hashes that contain all even numbered values
  -return the outcome as an array with the new hashes

  C
  

=end