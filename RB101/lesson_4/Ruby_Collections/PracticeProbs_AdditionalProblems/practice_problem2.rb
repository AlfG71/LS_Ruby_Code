ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 } 
ages
sum_of_ages = ages.values.sum
puts sum_of_ages

#Add up all of the ages from the Munster family hash:

=begin 
  P  (understand the Problem)
       -Take all the integer values from a hash
       -Add all the values into a resulting integer
       -Output the resulting value from the sum of the hash values

  E  (Examples)
     => 32 + 30 + 5843 + 10 + 22 + 237 = 6147

  D  (Data structures)
       Input:
         -Hash 
       Output:
         -Integer

  A  (Algorithm)
       -Sort through the hash (ages)
       -Extract all the values from the hash and store them into a new array
       -Add up all the values in the new array
       -Output the sum of the values extracted

  C  (Code)
     ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 } 
     ages
     sum_of_ages = ages.values.sum
     puts sum_of_ages


=end