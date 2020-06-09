# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

=begin 
  P (understand the Problem)
    -create a new method that takes an integer as an argument
    -the body of the method will evaluate the integer as a year in time
    -the evaluation will calculate the century the year was in
    -the method will print out a string stating the century number ending with the appropriate suffix (st, nd, rd, or th)
    -keeping in mind that new centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century 

  E (Examples)
    -century(2000) == '20th'
    -century(2001) == '21st'
    -century(1965) == '20th'
    -century(256) == '3rd'
    -century(5) == '1st'
    -century(10103) == '102nd'
    -century(1052) == '11th'
    -century(1127) == '12th'
    -century(11201) == '113th'

  D (Data structures)
    Input:
      -Integer
    Output:
      -String

  A (Algorithm)
    -create a method definition that takes an integer argument ( century(year) )
    -evaluate the integer (year) as a calculation of what year in time it falls 
    -translate the calculation into the century the year falls in
    -output the name of the century as a string with the proper suffix appended to the century number
    -end the method definition
 
  C  (Code)
    def century(year)
    	


=end