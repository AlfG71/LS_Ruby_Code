Kernel.puts("Welcome to Calculator...")
Kernel.puts("Please enter a number:") 
  number_1 = Kernel.gets().chomp()

Kernel.puts("Please enter a second number:") 
  number_2 = Kernel.gets().chomp()

Kernel.puts("What kind of calculation would you like to perform? (a = add, s = subtract, m = multiply, d = divide:")
	calculation_input = Kernel.gets().chomp()

	if    calculation_input == 'a'
	  result = number_1.to_i() + number_2.to_i()
	elsif calculation_input == 's'
	  result = number_1.to_i() - number_2.to_i()
	elsif calculation_input == 'm'
	  result = number_1.to_i() * number_2.to_i()
	else
	  result = number_1.to_f() / number_2.to_f()
	end 

Kernel.puts("The result is #{result}")
Kernel.puts("Thank you, come again...")



# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result
# Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output. Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().

=begin
	P  (Understand the problem)
	  -Build a calculator for the command line
	  -The program will ask for two numbers
	  -The program will ask for the type of operation to be performed (add, subtract, multiply or divide)
	  -The program will display the result of the operation

	E  (Examples)
	  => 1 + 1 = 2
	  => 1 - 1 = 0
	  => 2 * 2 = 4
	  => 4 / 2 = 2

	D  (Data structures)
	  Input:
	    -Integers
	    -Strings
	    
	  Output:
	    -Integers
	    -Strings
	A  (Algorithm)
	  -Ask the user for one number
	  -Assign value to a variable
	  -Ask the user for another number
	  -Assign value to a second variable
	  -Ask the user what type of calculation will be performed with the input
	  -Calculate the input
	  -Output the result of the calculation
	C  (Code)

	  Kernel.puts("Enter a number")
	  number_1 = Kernel.gets().chomp()

	  Kernel.puts("Enter a second number")
	  number_2 = Kernel.gets().chomp()

	  Kernel.puts("What kind of calculation would you like to perform? (a = add, s = subtract, m = multiply, d = divide")
	  calculation_input = Kernel.gets().chomp()

	  If calculation_input == a
	    puts number_1 + number_2
	  elsif calculation_input == s
	    puts number_1 - number_2
	  elsif calculation_input == m
	    puts number_1 * number_2
	  else
	    puts number_1 / number_2
	  end   

=end

