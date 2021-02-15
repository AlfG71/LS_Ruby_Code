# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

=begin
Problem

  -create a method that takes a string and returns an array or substrings
  -the resulting array is composed of all the substrings from the original string
  -the list should be ordered by where in the original string the substring begins
  -the substrings should be oredered from shortest to longest

Examples:

  -substrings('abcde') == [
     'a', 'ab', 'abc', 'abcd', 'abcde',
     'b', 'bc', 'bcd', 'bcde',
     'c', 'cd', 'cde',
     'd', 'de',
     'e'
   ]

   first substrings  => a, ab, abc, abcd, abcde
                        a is first index starting point

   second substrings => b, bc, bcd, bcde
                        b is second index starting point
   and so on...                     

Data Structure
  
  -Input  = string
  -Output = array of strings

Algorithm

  -create method with string parameter
  -create a new Array object to store all the resulting 'substrings'
  -iterate over the argument starting at the first index value and adding another index value to the string on each iteration.
    -from 0 up to the size of the argument sets the starting index of the substring on each iteration
      -from 1 up to the size of the argument minus the index at that iteration sets the length of the substring on each iteration
        -push a slice of the argument starting at the current index and current length on each iteration
-return 'substrings'        
      
=end

# def substrings(str)
#   all_substrings = []

#   0.upto(str.length - 1) do |index|        #starting index value at each iteration a == 0, b == 1, c == 2...
#     1.upto(str.length - index) do |length| #indicates the length of the substring 1, 2, 3 etc...
#     all_substrings << str[index, length]
           
#     binding.pry
#     end
#   end
#   all_substrings
# end

# def leading_substrings(str)
#   result = []

#   1.upto(str.length) do |length|
#     result << str[0, length]
#   end
  
#   result
# end

# def substrings(str)
#   all_substrings = []

#   0.upto(str.length - 1) do |index|        #starting index value at each iteration a == 0, b == 1, c == 2...
#     individual_substring = str[index..-1]  #indicates the length of the substring 1, 2, 3 etc...
#     all_substrings.concat(leading_substrings(individual_substring))
#   end

#   all_substrings
# end

# p substrings('abcde') #== ['a', 'ab', 'abc', 'abcd', 'abcde', 'b', 'bc', 'bcd', 'bcde',  'c', 'cd', 'cde', 'd', 'de', 'e']


# def substrings(str)
#   substrings_arr = []
  
#   0.upto(str.length - 1) do |idx|  #=> indicates starting position of the substring
#     1.upto(str.length - idx) do |length|  #indicates the length of the substring
#       substrings_arr << str[idx, length] #[idx=0, length=1] [idx=0, length=2] etc...
#     end
#   end
  
  
#   p substrings_arr  
# end

def substrings(string)
  substrings = []

  0.upto(string.size - 1) do |index|
    1.upto(string.size - index) do |length|
      substrings << string[index, length]
    end
  end

  substrings
end

p substrings('abcde') == [
     'a', 'ab', 'abc', 'abcd', 'abcde',
     'b', 'bc', 'bcd', 'bcde',
     'c', 'cd', 'cde',
     'd', 'de',
     'e'
   ]