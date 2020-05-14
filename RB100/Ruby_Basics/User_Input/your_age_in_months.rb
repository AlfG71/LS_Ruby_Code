#Write a program that asks the user for their age in years, and then converts that age to months.

puts "How old are you?"
age = gets.chomp
age_in_months = 12 * age.to_i

puts "You are #{age_in_months} months old!"

# $ ruby age.rb
# >> What is your age in years?
# 35
# You are 420 months old.