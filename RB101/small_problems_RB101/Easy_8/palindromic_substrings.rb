# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

=begin

Problem:
-create a method that takes a string as an argument and returns all the substrings you can create from the argument, that are palindromes (the substring reads the same forwards and backwards)
-The returned plaindromes need to be arranged in the same order as they are created 
-if there is more than one palindrome thas is a duplite of itself, it should be returned as many times as it appears in the result
-The palindromes are case sensitive aba == aba, Aba != aba
	

Examples:

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

-Do spaces count?

Data Structures:

Input  = String
Output = Array of Strings

Algorithm:

1) Create a method that takes a string argument
     -palindromes(str)

   1a) create a new object to store the resulting substrings that are palindromes 
       - result = []

   1b) iterate over str and check to see if the elements inside are palindromes (word)
       -if word == word.reverse  => palindrome
        - result << word

2) Create a helper method that takes a string argument
     -substrings(str)

    2a) create a new collection object to store all the substrings
          -substrings_arr = []

    2b) iterate over the argument and set the starting point of the iteration on the argument (index)
          -iterate again and set the length of the substring (length)
          -append the substring to substrings_arr
    2c) return the substrings_arr      
               
3) Return result

=end

# def substrings(str)  
#   substrings_arr = []

#   0.upto(str.length - 1) do |index|
#     1.upto(str.length - index) do |length|
#       next if str[index] == ' '
#       substrings_arr << str[index, length]  #length == how many characters starting from the index value
#     end
#   end

#   substrings_arr
# end

# def palindrome?(str)
#   str == str.reverse 
# end

# def palindromes(str)
#   substrings_arr = substrings(str)

#   substrings_arr.select do |each_word|
#     next if each_word.length == 1
#     palindrome?(each_word)
#   end
  
# end

def palindrome?(str)     #alternate method second go around
  str == str.reverse
end

def palindromes(str)
  result = []

  0.upto(str.size - 1) do |index|
    2.upto(str.size - index) do |length|
      result << str[index, length] if palindrome?(str[index, length])
    end
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == ['ll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada', 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did', '-madam-', 'madam', 'ada', 'oo']
p palindromes('knitting cassettes') == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']
