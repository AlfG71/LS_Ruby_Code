# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

=begin

  Problem:
  -Create a program that asks for user input of 6 numbers
  -The program will return a statement declaring if the 6th number entered appears amongst the previous 5 numbers envtered or not

  Examples:

  Copy Code
  ==> Enter the 1st number:
  25
  ==> Enter the 2nd number:
  15
  ==> Enter the 3rd number:
  20
  ==> Enter the 4th number:
  17
  ==> Enter the 5th number:
  23
  ==> Enter the last number:
  17
  The number 17 appears in [25, 15, 20, 17, 23].
  
  
  ==> Enter the 1st number:
  25
  ==> Enter the 2nd number:
  15
  ==> Enter the 3rd number:
  20
  ==> Enter the 4th number:
  17
  ==> Enter the 5th number:
  23
  ==> Enter the last number:
  18
  The number 18 does not appear in [25, 15, 20, 17, 23].

  Data Structures:

  Input  = Integer
  Output = String

  Algorithm 

  1) Ask for user input 6 times
    - create a method definition with a case statement for each instance of user input
    - puts "==> Enter the nth number:" will be the nreturn value of the method definition
  2) Store the user input in a new collection object
    - create a loop to repeat the user input 
    - append user input into a new Array object
    - break out of the loop once user has inputed 6 times
  3) Check to see if the last number is already included in the new collection object
    -if it is included
      - puts "The number nth appears in [25, 15, 20, 17, 23]." 
    -else
      - puts "The number nth does not appear in [25, 15, 20, 17, 23]."   

=end

# def prompt(msg)
#   puts "==> Enter the #{nth_number} number:"
# end

def number_suffix(number)
  number_suffix = case number
  when 1 then "1st"
  when 2 then "2nd"
  when 3 then "3rd" 
  when 4 then "4th"
  when 5 then "5th"
  when 6 then "last"
  end

  puts "==> Enter the #{number_suffix} number:"
end

number_collection = []
nth_number = 1

loop do
  final_number = 0

  loop do 
    number_suffix(nth_number)
    input = gets.chomp
    
    nth_number += 1
    final_number = input
    
    break if nth_number > 6

    number_collection << input.to_i
  end

    if number_collection.include?(final_number.to_i)
      puts "The number #{final_number} appears in #{number_collection}."
    else
      puts "The number #{final_number} does not appear in #{number_collection}."
    end
  break
end

#Alternate solution

def number_list
  arr_of_nums = %w[1st 2nd 3rd 4th 5th last]
  arr = []

  arr_of_nums.each do |each|            #iterator alternative
    puts "==> Enter the #{each} number:"
    arr << gets.chomp.to_i
  end

  # loop do                             #loop alternative
  # break if arr_of_nums.empty?

  # puts "==> Enter the #{arr_of_nums.shift} number:"
  # arr << gets.chomp.to_i
  
  # end
  last_number = arr.pop

  if arr.include?(last_number) 
    puts "The number #{last_number} appears in #{arr}." 
  else
    puts "The number #{last_number} does not appear in #{arr}."
  end
end

number_list
