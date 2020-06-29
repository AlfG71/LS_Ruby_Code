# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

=begin 
  P
  -given a nested array
  -create a program that takes each sub_array and returns a one dimensional hash with the elements in each sub_array transformed into key value pairs

  E
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

  D
  Input
    -array
  Output
    -hash

  A
  -iterate over each sub_array from the outer array
  -each iteration will transform each sub_array into a key/value pair 
  -each key value pair will populate a newly created hash
  -output the newly created hash

  C
  arr.map do |sub_arrays|
  	final_hash = {}
  	sub_arrays.select do |i|
  		final_hash = i
  		end
  		end

=end
hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
