#Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

# puts name.downcase == 'RoGeR'.downcase
# puts name.downcase == 'DAVE'.downcase

# Code above commented out does not ignore the case of both strings, it changes the case even thought the output is as expected it is not the right way to solve the problem given the directions.

# Expected output:

# true
# false