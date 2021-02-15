# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

=begin 

Problem
  -create a method with two parameters, one a hash and the other an array
  -the hash will contain one or more elements and the hash two key value pairs
  -it will return a greeting that uses the array values as the person's name and the hash values as their title and occupation

Example:

  -greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
  -=> Hello, John Q Doe! Nice to have a Master Plumber around.

Data Structure

  Input  = hash, array
  Output = string

Algorithm

  1) Create a method with two parameters one for an array and another for a hash
       -greetings(arr, hsh)

  2) Print a greeting that takes the array values as the name and hash values as title and occupation    

=end

# def greetings(arr, hsh)
#   "Hello, #{arr.join(' ')}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
# end

#Further exploration for Rubocop pass grade

def greetings(arr, hsh)
  name       = arr.join(' ')
  title      = hsh[:title]
  occupation = hsh[:occupation]

  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."
