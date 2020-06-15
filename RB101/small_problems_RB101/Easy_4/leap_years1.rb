# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

=begin 
  P  (understand the Problem)
    -write a method (leap_year?) that takes an integer as an argument
    -the integer needs to be greater than zero
    -calculate if the year is a leap year
    -return true if it is a leap year
    -leap years are evenly divisible by 4 
    -if the year is also evenly divisible by 100 it is only a leap year if it also evenly divisible by 400

  E  (Examples)
		-leap_year?(2016) == true
		-leap_year?(2015) == false
		-leap_year?(2100) == false
		-leap_year?(2400) == true
		-leap_year?(240000) == true
		-leap_year?(240001) == false
		-leap_year?(2000) == true
		-leap_year?(1900) == false
		-leap_year?(1752) == true
		-leap_year?(1700) == false
		-leap_year?(1) == false
		-leap_year?(100) == false
		-leap_year?(400) == true

  D  (Data structures)
    Input:
      -Integer
    Output
      -Boolean

  A  (Algorithm)
    -create a method definition leap_year?(year)
    -the method body will calculate if the year is a leap year by dividing it by the number 4 and the number 100 and the number 400
    -if it is evenly divisible by all of those it is a leap year
    -if it is evenyl divisible by 4 only it is a leap year
    -otherwise it is not a leap year 
       
  C
    def leap_year?(year)
      if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
      	true
      	else
      		fale
      		end
      		end

=end

def leap_year?(year)
  true unless year % 4 == 0 && year % 100 == 0 && year % 400 != 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
