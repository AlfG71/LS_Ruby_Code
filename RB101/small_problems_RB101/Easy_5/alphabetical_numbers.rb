# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

=begin
Problem
  
  -create a method that takes an array of integers between the numbers 0 & 19
  -the method returns an array of the integers sorted based on the values of the English words for each number.
  -the sorting will be in alphabetical order based on the English words of the numbers
  -the returned object will have the numbers sorted based on the alphabetical appearance of their names in English 1 = one, 2 = two 4 = four 
  -[1,2,4].sort => [4,1,2]  

Examples:

  -alphabetic_number_sort((0..19).to_a) == [
    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
    6, 16, 10, 13, 3, 12, 2, 0]

Data Structure
  
  Input  = Array
  Output = Array

Algorithm

1)  Create a constant variable containing a range of numbers from 0 to 19 and their corresponding names in English
  -NUMBER_IN_ENGLISH = Hash.new

2) Create a method definition  
  -alphabetic_number_sort(arr)

3) Create a new collection object to store and sort through the English words of the numbers in alphabetical order
  -number_names = []

4) Iterate through the argument and append the english name of each number in the argument to the new collection object
  -arr.each number_names << NUMBER_IN_ENGLISH[num]

5) Sort the collection object 
  -number_names.sort

6) Convert the elements in number_names back into their number counterparts  
  -number_names.map {|word| NUMBERS_IN_ENGLISH.key?(word)}

7) Return the transformed collection object

=end
  
  NUMBER_IN_ENGLISH = {0 => 'zero', 
                       1 => 'one', 
                       2 => 'two', 
                       3 => 'three', 
                       4 => 'four', 
                       5 => 'five', 
                       6 => 'six', 
                       7 => 'seven', 
                       8 => 'eight', 
                       9 => 'nine', 
                       10 => 'ten', 
                       11 => 'eleven', 
                       12 => 'twelve', 
                       13 => 'thirteen', 
                       14 => 'fourteen', 
                       15 => 'fifteen', 
                       16 => 'sixteen', 
                       17 => 'seventeen', 
                       18 => 'eighteen', 
                       19 => 'nineteen'}  

# def alphabetic_number_sort(arr)
#   number_names = []

#   arr.each {|num| number_names << NUMBER_IN_ENGLISH[num]}
   
#   number_names.sort!.map {|word| NUMBER_IN_ENGLISH.key(word)}

# end

                NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)                         #Alternate solutions
  # arr.sort_by {|num| NUMBER_WORDS[num]}               #sort_by method
  arr.sort {|a, b| NUMBER_WORDS[a] <=> NUMBER_WORDS[b]} #regular sort methos
end

p alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
    