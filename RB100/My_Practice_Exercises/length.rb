puts 'Whats is your name?'
name = gets.chomp

puts 'What is your middle name?'
middle_name = gets.chomp

puts 'What is your last name?'
last_name = gets.chomp

full_name = (name + middle_name + last_name).length.to_s

puts 'Did you know there are ' + full_name + ' characters in your name ' + name + ' ' + middle_name + ' ' + last_name + '?'

# name.length.to_s + middle_name.length.to_s + last_name.length.to_s