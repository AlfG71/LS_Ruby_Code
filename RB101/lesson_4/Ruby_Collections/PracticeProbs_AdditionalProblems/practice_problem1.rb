hash = {}
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones.each_with_index {|item, index| hash[item] = index}
puts hash       

# Given the array below

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

=begin
  P  (understand the Problem)
       -write a program that takes an array of strings
       -take the array and turn it into a hash
       -the new hash should have the names of the original array elements as keys and the index of those elements in the original array as their values

  E  (Examples)
     -flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
     => flintstones {
	        "Fred"    => 0,
	        "Barney"  => 1,
	        "Wilma"   => 2,
	        "Betty"   => 3,
	        "Pebbles" => 4,
	        "BamBam"  => 5
     }

  D  (Data structures)
       Input:
         -Array
       Output:
         -Hash

  A  (Algorithm)
       -Declare a new variable with an empty hash as its value
       -Convert the input array into a hash
       -Populate the new hash with the array string elements as the hash's keys and the array string element index values in the array as their hash values
       -Store the new hash into the newly created variable
       -Output the new variable with the new hash

  C  (Code)
       hash = {}
       flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
       hash = flintstones.each_with_index {|item, index| hash[item] = index}
       puts hash

=end