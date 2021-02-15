# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

=begin
  Problem:

    - Create a method that takes an array of numbers
    - It will return an array with the same number of elements as the original array argument but each element will be added to the previous one keeping a running total along the way.

  Example:

  => running_total([2, 5, 13]) == [2, 7, 20] 
  => running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] 
  => running_total([3]) == [3]
  => running_total([]) == [] 

  Data Structures:
    Input  = Array of numbers
    Output = Array of numbers

  Algorithm:
  
  1) create a method definition  
    -running_total(arr)
  2) Create a new Array collection object (result)
  3) Create a new counter variable that starts at one to indicate the starting index number
    - counter = 1
  2) iterate over the array argument adding the previous element in the iteration to the current one and returning a total of the sum
    -
  3) return the resulting array object (result)

=end

# def running_total(arr)
#   sum = 0
#   arr.map {|num| sum += num}
# end

def running_total(arr)
  result = []
  counter = 0    
  return arr if arr.length <= 1
  
  result << arr[counter]  # result = [2]

  loop do
    counter += 1
    result << result[counter - 1] + arr[counter] 
    break if counter == arr.length - 1
  end
  result
end

p running_total([2, 5, 13]) == [2, 7, 20] 
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] 
p running_total([3]) == [3]
p running_total([]) == [] 
