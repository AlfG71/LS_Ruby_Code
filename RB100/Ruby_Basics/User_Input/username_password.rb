# In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.

PASSWORD = "H1There!"
USERNAME = "AlfG"

loop do 
	puts ">>  Please enter your user name:"
	user_name = gets.chomp
	puts ">>  Please enter your password:"
	password  = gets.chomp

	break if user_name == USERNAME && password == PASSWORD
  #*** IF statement unnecessary!!!
	if user_name != USERNAME || password != PASSWORD
		puts ">>  Authorization failed!"   
	end
	#*** IF statement unnecessary!!!
end

puts "Welcome!"



# $ ruby login.rb
# >> Please enter user name:
# John
# >> Please enter your password:
# Hello
# >> Authorization failed!
# >> Please enter user name:
# mary
# >> Please enter your password:
# SecreT
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# root
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# SecreT
# Welcome!