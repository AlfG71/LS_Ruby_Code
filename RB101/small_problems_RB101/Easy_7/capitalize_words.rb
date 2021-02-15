# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Examples

=begin
Problem
  
  -create a method that takes a string argument
  -the string will contain more than one word 
  -the method will contain a new string with the value of the original string but the first letter of each word will be capitalized and the rest of the letters will be lowercase
  -assume that words are separated by spaces

Examples  

  -word_cap('four score and seven') == 'Four Score And Seven'
  -word_cap('the javaScript language') == 'The Javascript Language'
  -word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

Data Structure

  Input  = string
  Output = string

Algorithm

  -create a method that takes a collection object of words as a parameter
  -transform the object with each word Capitalized and the rest of the letters lowercased
  -return the transformed object

  Pseudocode

    1)create a method definition with a string argument
      -word_cap(str)

    2) convert the string argument into individual word objects
      -str.split

    3) iterate over each individual word object 
        -new_str = str.split.each |word| 
        -capitalize the beginning of each word
          -word.capitalize
        -convert the individual objects back into one string object
          -new_str.join(' ')
      -return the new string object    

=end

# def word_cap(str)
#   str.split.map do |word|
#       word.capitalize
#   end.join(' ')
# end

# def word_cap(words)                        # LS Solution
#   words_array = words.split.map do |word|
#     word.capitalize
#   end
#   wabords_array.join(' ')
# end

# def word_cap(str)              # Alternative solution
#   word_arr = str.split
#   result = []
#   word_arr.each do |word|
#     if word.include?('"')
#     result << word
#   else
#     result << word.downcase.capitalize!
#   end
# end
#   result.join(" ")
# end

# def word_cap(str)     #alternate solution second go around
#   str.split.map! {|word| word.capitalize}.join(' ')  
# end

# def word_cap(str)       #alternate 2 solution second go around
#   result = str.split
#   result.each do |word|
#     word.capitalize!
#   end
#   result.join(' ')
# end

def word_cap(str)  #further exploration
  result = str.split
  index = 0

  loop do 
    if result[index][0] == '\ '
      index += 1
      next
    else
    result[index][0] = result[index][0].upcase  
    index += 1
    break if index >= result.size
  end
  end

  result.join(' ')
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
