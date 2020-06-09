munsters = {
       "Herman" => { "age" => 32, "gender" => "male" },
       "Lily" => { "age" => 30, "gender" => "female" },
       "Grandpa" => { "age" => 402, "gender" => "male" },
       "Eddie" => { "age" => 10, "gender" => "male" },
       "Marilyn" => { "age" => 23, "gender" => "female"}
     }

munsters.each do |k, v|
	if v['age'] < 18
		v['age_group'] = 'kid'
	elsif v['age'] > 18 && v['age'] < 64
		v['age_group'] = 'adult'
	else
		v['age_group'] = 'senior'
	end
end

puts munsters

# Given the munsters hash below

# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

=begin
  P  (understand the Problem)
       -We are given a nested hash of key value pairs
       -Each key is a string, values are both strings and integers
       -We need to add an additional key value pair to each sub element in the main elements of the hash
       -The new key value pairs will be added based on the following definition
         -Each key will be the string "age_group"
         -The values will be assigned based on the following rules:
           -String "kid" if the vallue for the key "age" is between the integers (0..17)
           -String "adult" if the value for the key "age" between the integers (18..64)
           -String "senior" if the value for the key "age" is >= 65 

  E  (Examples)
     munsters = {
       "Herman" => { "age" => 32, "gender" => "male" },
       "Lily" => { "age" => 30, "gender" => "female" },
       "Grandpa" => { "age" => 402, "gender" => "male" },
       "Eddie" => { "age" => 10, "gender" => "male" },
       "Marilyn" => { "age" => 23, "gender" => "female"}
     }

      OUTPUTS =>
      munsters = {
       "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
       "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
       "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
       "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
       "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }


  D  (Data structures)
     Input:
       -Hash
     Output:
       -Hash

  A  (Algorithm)
       -declare (munsters) hash
       -initialize new variable with main hash keys as elements
       -iterate over the (munsters) hash
       -upon each iteration
         -evaluate the value of the each "age" key
         -a new key "age_group" will be added to each sub hash
         -the value of the "age" key will determine the value of the new "age_group" key
         -if the value of the "age" key is between (0..18) the "age_group" value will be "kid"
         -if the value of the "age" key is between (18..64) the "age_group" value will be "adult"
         -if the value of the "age" key is 65 or over, the "age_group" value will be "senior"
         -munsters[key].fetch("age")	


  C	 (Code)
       munsters = {
       "Herman" => { "age" => 32, "gender" => "male" },
       "Lily" => { "age" => 30, "gender" => "female" },
       "Grandpa" => { "age" => 402, "gender" => "male" },
       "Eddie" => { "age" => 10, "gender" => "male" },
       "Marilyn" => { "age" => 23, "gender" => "female"}
     }
     munsters_arr = munsters.to_a 
     counter = 0

     loop do 
       break if counter == munsters.size
       munster_age = munsters_arr[counter][1].dig("age")
       if munster_age <= 18
       	munsters[counter]["age_group"] = "kid"
       	elsif munsters_age(18..64).include?
       		munsters[counter]["age_group"] = "adult"
       		else
       			munsters[counter]["age_group"] = "senior"
       			end
       			counter += 1
       			munsters
       			end

	
=end