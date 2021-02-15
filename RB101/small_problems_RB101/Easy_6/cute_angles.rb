# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

=begin
	Problem:

	 -Create a method that takes a float argument representing an angle between 0 and 360 degrees
	 -It will return a string that represents that angle in degrees denoted by the symbol °, the minutes of the angle represented by the single quote symbol ' and the seconds of the angle represented by the double quote symbol "
	 -a degree has 60 minutes and a minute has 60 seconds
	 -You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".
	 -You may use this constant to represent the degree symbol: 	-DEGREE = "\xC2\xB0"
	
Examples:

Copy Code
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

Data Structures:

Input  = Float
Output = String

Algorithm:

1) Create a method definition
  -dms(float)

2) Create constant representing degree symbol
  -DEGREE = "\xC2\xB0"

3) If the argument is a whole number
  -return argument + '00'' + "00""

4)     





=end