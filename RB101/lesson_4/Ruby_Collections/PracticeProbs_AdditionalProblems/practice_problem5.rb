# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

puts flintstones.find_index {|str| str[0..1] == "Be"}