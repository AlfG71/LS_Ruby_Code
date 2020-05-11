p = 2000
j = 2.5
n = 48

m = p * (j / (1 - (1 + j)**(-n)))

puts m

puts 'How much money would you like to borrow?'
loan_amount = gets.chomp # == p

puts "You'd like to borrow $#{loan_amount} dollars!"

puts 'Over how long would you like to repay the loan?'
loan_term = gets.chomp # == y in months

puts "You'd like the loan to be paid back over #{loan_term} years!"

APR = 3.3

puts 'APR is at 3.3% right now...'

puts 'Given your terms we are looking at the following calculations'

def monthly_interest_rate(j)
  j = (APR / 12) / 100	
end

puts "Your monthly interest rate will be #{monthly_interest_rate(APR)}!"

def loan_in_years(y)
  n = ''.to_i
  y = n / 12
end

puts "The loan duration in months will be #{loan_in_years(loan_term)}!"