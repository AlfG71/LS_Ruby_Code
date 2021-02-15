# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.


=begin

Problem

  -create a method that takes an array of subarrays listing a type of fruit and its quantity
  -the method will return an array populated with the fruits from the original array printed as many times as the number it was paired with in the original subarrays

Example:

  -buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]  
  => print apples 3 times
  => print bananas 2 times
  => print orange 1 time

Data Strucctures

  Input  = nested array
  Output = array

Algorithm

  1) create a function that takes a multidimensional array as a parameter
       - buy_fruit(arr)
  1a) create a new empty array to collect result
        - result = []     
  2) iterate over buy_fruit (sub_arr)
       -for each sub_arr
         -append sub_arr[0] times sub_arr[1] into result
  3) return result

=end

# def buy_fruit(arr)
#   result = []

#   arr.each do |sub_arr|
#     result << [sub_arr[0]] * sub_arr[1]
#   end
  
#   result.flatten
# end

# def buy_fruit(arr)                  #alternate solution
#   list = []

#   arr.each do |fruit, quantity|
#     quantity.times {list << fruit}
#   end

#   list
# end
 
# def buy_fruit(arr)                                        #LS Alternate solution
#   arr.map {|fruit, quantity| [fruit] * quantity}.flatten
# end

def buy_fruit(arr)  #alternate solution second go round
  result = []

  arr.each do |sub_arr|
    sub_arr[1].times do |_|
      result << sub_arr[0]
    end
  end
   result
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
