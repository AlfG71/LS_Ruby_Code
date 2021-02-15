# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

=begin
Problem

-Create two methods that each take a time of day in a 24 hour format as a string 
-One of the methods will return the number of minutes before midnight 
-The other method returns the number of minutes after midnight
-Both methods should return a value in the range 0..1439

Examples:

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Data Structures
  Input  = string
  Output = integer

Algrithm

-define a method that takes a string as a parameter
-the method will evaluate the string number formatted for 24 hour time 
-if the method is after midnight it will return the time counting up from the number 0 
-if the method is before midnight it will return the time counting down from the number 1439 

Code
=end

def after_midnight (str)

end

def before_midnight (str)

end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0