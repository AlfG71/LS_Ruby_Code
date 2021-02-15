# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

=begin
  Problem:
    -Create a method that takes a year greateer than 0 a determines if it is a leap year
    -It will return true if it is and false otherwise

  Example:

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

  Data Structure:

    Input  = Integer
    Output = Boolean
  
    Rules:
      -Leap years are evenly divisible by 4 unless it is also evenly divisible by 100 in which case it also needs to be evenly divisible by 400
      -If it is evenly divisible by 4 and 100 but not 400 it is not a leap year
        
  Algorithm:

    1) create a method definition that takes an integer as an argument 
      - leap_year?(year)
    2) evaluate if the integer is evenly divisible by 4
      - if year % 4 == 0
        - year % 100 == 0  && year % 400 == 0 as well?
        -return true 
    3) if integer is not evenly divisible by 400
      -return false
      
=end

def leap_year?(year)
  if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
    true
  elsif year % 4 == 0 && year % 100 != 0
    true
  else
    false
  end    
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

# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

# def leap_year?(year)
#   return true if year <= 1752 && year % 4 == 0
#   if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
#     true
#   elsif year % 4 == 0 && year % 100 != 0
#     true
#   else
#     false
#   end    
# end

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true
