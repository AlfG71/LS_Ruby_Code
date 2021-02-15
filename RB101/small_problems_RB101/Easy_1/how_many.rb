#Write a method that counts the number of occurrences of each element in a given array.

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

=begin 

Problem:
  -Create a function that takes and Array of Strings argument
  -It will count each instance of a specific string 
  -It will output the String and the amount of times it occurs in the Array
  -The Strings are case sensitive 

Examples:

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

Data structures:

Input  = Array of Strings
Output = Hash

Algorithm:

1) Create a method definition count_occurrences(vehicles) with one array parameter
2) Initialize a new empty Hash object
3) Initialize a new Integer object to be the count of each instance of the individual strings
4) Iterate over the Array counting all the strings
  a) take each string and place it into the hash object with a value of 1
  b) if the hash already has the String as a key, add 1 to the value of that key
5) Return all the key/value pairs

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  resulting_hash = {}
  initial_word_value = 1

  arr.each do |word|
  	if resulting_hash.include?(word)
  		resulting_hash[word] = (resulting_hash[word] + 1)  #increase value of the word key by one
    else
    resulting_hash[word] = initial_word_value        #initialize a vey/value pair
    end
  end

  resulting_hash.each do |key, value|
  	puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
