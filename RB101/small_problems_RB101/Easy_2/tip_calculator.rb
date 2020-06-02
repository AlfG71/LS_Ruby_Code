puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the percentage?"
percentage = gets.chomp.to_f

percentage_formula = (percentage/100) * bill

tip = percentage_formula.round(2)

puts "The tip is $#{tip}"
puts "The total is $#{bill}"

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

=begin
  P  (understand the Problem)
       -create a calculator program
       -it will ask for a bill amount and ask for a tip rate
       -it will calculate those two numbers into a tip amount
       -it will output the tip amount

  E  (Examples)
       -What is the bill? 200
       -What is the tip percentage? 15

       -The tip is $30.0
       -The total is $230.0

  D  (Data structures)
       Input:
         -Integer

       Output:
         -String 
         -Integer

  A  (Algorithm)
       -get user input by asking "What is the bill?"
       -store input in a variable (bill)
       get user input by asking "What is the tip percentage?"
       -store user input in a variable (percentage)
       -create formula to calculate the amount to be tipped
       -create new variable (tip) 
       -assign the value of the formula to the variable tip
       -return the output "The tip is $#{tip}"
       -return the output "The total is $#{bill}"

  C  (Code)
       puts "What is the bill?"
       bill = gets.chomp.to_f
       puts "What is the percentage?"
       percentage = gets.chomp.to_f
       percentage_formula = (percentage/100)/bill
       tip = percentage_formula
       puts "The tip is $#{tip}"
       puts "The total is $#{bill}"
	
=end