# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

=begin
  Problem

  -Create a program that asks for the amount of a bill and asks for the rate of the tip to be left on that bill
  -The program will output the value of the resulting tip and the value of the total bill after the tip has been added to it

  Example:
  
  Copy Code
  What is the bill? 200
  What is the tip percentage? 15
  
  The tip is $30.0
  The total is $230.0

  Data Structures:

    Input  = Integer
    Output = String

  Algorithm
  
    1) Create a new constant to store the TIP_CALCULATION formula (bill * (tip_percentage/100))
    2) Request user input for the bill total and assign value to a new variable (bill)
    3) Request user input for the tip desired and assign value to a new variable(tip_percentage)
    4) Calculate the resulting amount and assign to a new variable (tip_amount = TIP_CALCULATION)
    5) Add tip amount to the total bill (total_bill = (tip_amount + bill))
    6) Output the total tip
    7) Output the total bill

=end

puts "What is the bill amount?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

puts "Your tip percentage is #{(tip_percentage / 100).round(2)}"

TIP_CALCULATION = ((tip_percentage / 100).round(2) * bill).to_f.round(2)

total_bill = (TIP_CALCULATION + bill).to_f.round(2)

puts "The total tip is #{TIP_CALCULATION}"
puts "The updated bill after tip is #{total_bill}"

# Further Exploration answer


def tip_calc
  puts "What is the bill?"
  bill = gets.to_f

  puts "What is the tip percentage?"
  percentage = gets.to_f

  tip = (bill * (percentage/100))
  total_bill = (tip + bill)

  puts "The tip is $#{sprintf("%.2f", tip)}"
  puts "The total is $#{sprintf("%.2f", total_bill)}"
end

tip_calc

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.00
# The total is $230.00
