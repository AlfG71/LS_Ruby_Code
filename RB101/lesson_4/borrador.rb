PASSWORD = "SecreT"
USERNAME = "John"

loop do
  puts "Please enter a username."
  username = gets.chomp
  puts "Please enter your password."
  password = gets.chomp
  break if password == PASSWORD && username == "John"
  puts "Authorization failed!"
end
p "Welcome!"