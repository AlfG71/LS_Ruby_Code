# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

=begin 
  P
  -Write a method that takes an integer as an argument
  -It should take the integer value and convert it into an hours and minutes value of before or after midnight.  (Gives the time)
  -If the original integer value is a negative number it will output an hour value before midnight
  -If the original integer value is a positive number it will output an hour value after midnight
  -We are not allowed to use either the Date or Time classes from the Ruby docs
  -We can disregard Daylight Savings and Standard Time and other complications

  E
  - time_of_day(0) == "00:00"
	- time_of_day(-3) == "23:57"
	- time_of_day(35) == "00:35"
	- time_of_day(-1437) == "00:03"
	- time_of_day(3000) == "02:00"
	- time_of_day(800) == "13:20"
	- time_of_day(-4231) == "01:29"

  D
  Input
    -integer
  Output
    -string

  A
  -begin method definition time_of_day(int)
    -calculate the integer value into hours
    -declare how many minutes are in a day = 1440 minutes
    -declare the starting point (midnight) as hour zero 
  -create formula assigning minutes into hh:mm
    -transform the number of minutes into hh:mm format
      -if the original int is a negative number, the hour will count down from midnight
      -if the original int is a positive number, the hour will count up from midnight
    -convert the hour format into a string
    -return the hour string
  -end method definition

  C
=end

require 'pry'
def time_of_day(mins)
	minutes_in_day = 1440
  mins = mins % minutes_in_day
  hours, minutes = mins.divmod(60)
  
  format("%02d:%02d", hours, minutes)

end

p time_of_day(0)     == "00:00"
p time_of_day(-3)    == "23:57"
p time_of_day(35)    == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000)  == "02:00"
p time_of_day(800)   == "13:20"
p time_of_day(-4231) == "01:29"
