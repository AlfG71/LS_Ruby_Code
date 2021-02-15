# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.


=begin

Problem
  
  -create a function with a string argument of a first name, a space and a last name
  -it will return a new string with the last name followed by a coma and a space followed by the first name

Examples

  -swap_name('Joe Roberts') == 'Roberts, Joe'

Data Structure

  -Input  = string
  -Output = string

Algorithm

  -create a method with a string argument
    -split the argument into individual words
    -reverse the order of the split argument
    -convert the reversed argument into a string with a coma separating the items
  -return the string with the words swapped in order    
    
=end

def swap_name(str)
  str.split.reverse.join(', ')
end
 
# def swap_name(str)                     #Original Solution
# 	str_arr = str.split
# 	new_str = str_arr[-1] + ', ' + str_arr[0]

# end

p swap_name('Joe Roberts') == 'Roberts, Joe'