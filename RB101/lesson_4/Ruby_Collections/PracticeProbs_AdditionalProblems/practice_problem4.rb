ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts ages.values.min

# Pick out the minimum age from our current Munster family hash:

# 

=begin 
  P  (understand the Problem)
       -given a hash with strings for key and integers for values
       -iterate through the given hash 
       -select the key/value element with the lowest integer value

  E  (Examples)
     ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

     => {"Eddie" => 10}

  D  (Data structures)
     Input:
       -hash
     Output:
       -hash

  A  (Algorithm)
       -iterate through (age) hash
       -select the key/value pair with the lowest value

  C  (Code)
     ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
     ages.min


=end