# Given this nested Hash:


# figure out the total age of just the male members of the family.

=begin 
  P  (understand the Problem)
      -given a nested hash with 5 key value pairs
      -select all the hashes with a male value
      -select the age of those hashes
      -add the ages 
      -output the total of that sum

  E  (Examples)
     Herman, age 32, male
     Grandpa, age 402, male
     Eddie, age 10, male
     total age 444

  D  (Data structures)
      Input:
        -hash
      Output
        -integer

  A  (Algorithm)
      -select all the male members of the family and place into a new hash
      -select all the ages of the new hash
      -output the sum of all the male ages

  C  (Code)
     male_munsters = munsters.select {||k, v| v == "male"}


=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_munsters = munsters.select do |names, values|
	                values.has_value?("male")	               
	             end

age_total = []

male_munsters.each do |k, v|
  k['age']
  age_total << v['age']
end
p age_total.sum