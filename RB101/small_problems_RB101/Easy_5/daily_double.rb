# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

=begin

Problem

-create a method that takes a string argument and returns the value of the original string
-the new string value will have all the consecutive duplicate characters collapsed into a single character
-all the characters equal that follow each other and are equal to each other will be removed
-cannot use String#squeeze

Examples:

-crunch('ddaaiillyy ddoouubbllee') == 'daily double'
-crunch('4444abcabccba') == '4abcabcba'
-crunch('ggggggggggggggg') == 'g'
-crunch('a') == 'a'
-crunch('') == ''

Data structure

  Input  = string
  Output = string

Algorithm:

1) create a method definition
  -crunch(str)

2) create a new collection object to store and iterate over the individual characters of the argument
  -array_of_str = str.chars

2a) create a new collection object to provide the final result  

3) iterate over the new object to remove all the identical consecutive characters.
  -array_of_str.each_with_index do result << char

4) convert the new object back into a string 
  -result.join

5) return the new object  

=end 

def crunch(str)  # final solution after second go around
  result = ''
  arr_of_letters = str.chars
  
  arr_of_letters.each do |letter|
    if result[-1] == letter
      next
    else
      result << letter
    end
  end
  result
end 

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=begin

def crunch(str)
  array_of_str = str.chars
  result = []

  array_of_str.each_with_index do |char, idx|  
    if array_of_str[idx] == array_of_str[idx + 1]
      next
    else
      result << char
    end
  end
  result.join
end

alterante solution

def crunch(str)
  arr_of_words = str.split
  result = []

  arr_of_words.each do |word|
    word.chars do |char|
      result << char unless result.last == char 
    end
    result << ' '
  end
  result.pop
  result.join
end

def crunch(str)                # LS SOLUTION
  index = 0
  result = ''

  while index <= str.length - 1
    result << str[index] unless str[index] == str[index + 1]
    index += 1
  end

  result
end
=end