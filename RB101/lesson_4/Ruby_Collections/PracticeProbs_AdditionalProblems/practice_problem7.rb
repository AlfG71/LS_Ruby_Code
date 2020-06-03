statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
letter_frequency = statement.scan(letter).count
result[letter] = letter_frequency if letter_frequency > 0
end
puts result

# Create a hash that expresses the frequency with which each letter occurs in this string:

=begin 
  P  (understand the Problem)
       -write a program that takes a string and creates a hash 
       -the hash will be populated with key value pairs
       -the keys will be each character in the original string
       -the values will represent the number of times each character appears in the string

  E  (Example)
       -statement = "The Flintstones Rock"
       -ex:

       -{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

  D  (Data structures)
     Input:
       -String
     Output:
       -Hash

  A  (Algorithm)
       -create a variable (statement) with a string value of "The Flintstones Rock"
       -initialize a new empty hash
       -convert the string into separate characters
       -iterate over the separate character string counting the number of instances each letter appears
       -populate the new hash with each letter (character) as a key and the number of instances it appears in the string as its value

  C  (Code)
       statement = "The Flintstones Rock"
       statement.each_char {|x| x }
       result = {}
       letters = ('A'..'Z').to_a + ('a'..'z').to_a
       letters.each do |letter|
       letter_frequency = statement.scan(letter).count
       result[letter] = letter_frequency if letter_frequency > 0
       end


=end