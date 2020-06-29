# One of the most frequently used real-world string properties is that of "string substitution", where we take a hard-coded string and modify it with various parameters from our program.

# Given this previously seen family hash, print out the name, age and gender of each family member:

# ...like this:

# (Name) is a (age)-year-old (male or female).

=begin 
  P  (understand the Problem)
    -given a hash, write a program that takes certain information from the hash and prints it out using string interpolation

  E  (Example)
    - (Name) is a (age)-year-old (male or female).

  D  (Data structures)
    Input
      -Hash
    Output
      -String

  A  (Algorithm)
    -iterate over the nested hash given
    -for each element inside the hash
      -extract the key at each index
      -extract the value for each key inside the value hashes
      -output the extracted information via string interpolation

  C  (Code)
    munster_names = []
    munsters.each do |k, v|
      munster_names << k
    end

    puts family_info = munsters.each do |k, v|
           "#{munster_names" is a #{v['age']}-year-old #{v['gender']}} 
           end
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munster_names = []

munsters.each do |k, v|
  munster_names << k
end

munsters.each do |k, v|
	puts "#{munster_names.shift} is a #{v['age']}-year-old #{v['gender']}" 
  end

# OR 

# LS Solution

# munsters.each_pair do |name, details|
# puts "#{name} is a #{details['age']} year old #{details['gender']}"
# end



