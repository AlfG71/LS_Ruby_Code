# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

=begin
  
Problem:

-Create a method that takes an array as an argument.
-It will reverse the elements inside in place and return the original Array object but with the elements reversed
  
Examples:

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []

Data Structures:

Input  = Array
Output = Array

Algorithm:

1) create a method definition
  -reverse!(arr)

2) iterate over the argument and take the element at the corresponding index in the iteration and place it on the last index of the array.  Increasing the last index value by one on each iteration.

3) Return original reversed array object  


=end

def reverse!(arr)            # Alternate solution on the second go around
  first_index = 0
  last_index = -1
  iteration = arr.length - 2

  0.upto(iteration - 1) do |num|
    arr[first_index], arr[last_index] = arr[last_index], arr[first_index]
    first_index += 1
    last_index -=1
  end
  arr
end

list = ['abc']
p reverse!(list) == ["abc"] # true

list = []
p reverse!(list) == [] # true

list = [1,2,3,4]
p reverse!(list) == [4, 3, 2, 1]

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]

# def reverse!(arr)
#   index_start = 0 
#   index_end = -1  # 4 on the first example

#   while index_start < arr.length/2
#     arr[index_start], arr[index_end] = arr[index_end], arr[index_start]
#     index_start +=1
#     index_end -= 1
#   end

#   arr
# end

# list = [1,2,3,4]
# p reverse!(list) == [4, 3, 2, 1]
# # result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"]
# # list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# p reverse!(list) == ["abc"]
# # list == ["abc"]

# list = []
# p reverse!(list) == []
# # list == []




































# def reverse!(list)
#   return [] if list == []
#   second_arr = []
#   loop do 
#     second_arr << list.pop
#     break if list.empty?
#   end
 
#   loop do 
#     list << second_arr.shift  
#     break if second_arr.empty?
#   end
#   list
# end

# p list = [1,2,3,4]
# p result = reverse!(list)
# p result == [4, 3, 2, 1]
# p list == [4, 3, 2, 1]
# p list.object_id == result.object_id

# p list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"]
# p list == ["c", "d", "e", "b", "a"]

# p list = ['abc']
# p reverse!(list) == ["abc"]
# p list == ["abc"]

# p list = []
# p reverse!(list) == []
# p list == []