# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

=begin
Problem
  
  -create a method that takes an array of integers between the numbers 0 & 19
  -the method returns an array of the integers sorte based on the values of the English words for each number

Examples:

  -alphabetic_number_sort((0..19).to_a) == [
    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
    6, 16, 10, 13, 3, 12, 2, 0]

Data Structure
  
  Input  = Array
  Output = Array

Algorithm
  -create a method that takes an array of integers as an argument 
  -transform the integers in the array into their word counterparts as strings
  -sort the new array of words
  -convert the words in the new sorted array back into their original integer form 
  -return the new array with the sorted integers based on their word value

Code
=end

NUMBER_WORDS = {0=>'zero', 1=>'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five', 6=>'six', 7=>'seven', 8=>'eight', 9=>'nine', 10=>'ten', 11=>'eleven', 12=>'twelve', 13=>'thirteen', 14=>'fourteen', 15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'}

def alphabetic_number_sort(arr)
  word_arr             = []
  sorted_numbers_array = []

  arr.each do |num|
    word_arr << NUMBER_WORDS[num]
  end
  
  word_arr.sort.each do |number_string|
    sorted_numbers_array << NUMBER_WORDS.key(number_string)
  end

  sorted_numbers_array
end


p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]