ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
young_ones = ages.delete_if {|k, v| v >= 100}
puts young_ones

# In the age hash:

# 
# remove people with age 100 and greater.

=begin 
  P  (understand the Problem)
       -given a hash (ages) of string keys and number values
       -sort through the hash and remove all the key value pairs that have a value of 100 or more

  E  (Examples)
     => ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
     => outup ages = { "Herman" => 32, "Lily" => 30, "Eddie" => 10 }

  D  (Data structures)
     Input:
       -hash
     Output:
       -hash

  A  (Algorithm)
       -sort through the values of the given hash 
       -remove the key value pairs with value >= 100
       -print new hash with missing key value pairs

  C  (Code)
       ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
       young_ones = ages.delete_if {|k, v| v >= 100}
       puts young_ones


=end