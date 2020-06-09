# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]


def oddities(arr)
  counter = 0
  new_arr = []
  loop do
  arr[counter]
  new_arr << arr[counter]
  counter += 2
  break if counter >= arr.size 
  end
  p new_arr
end
p oddities([2, 3, 4, 5, 6])    == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def'])     == ['abc']
p oddities([123])              == [123]
p oddities([])                 == []