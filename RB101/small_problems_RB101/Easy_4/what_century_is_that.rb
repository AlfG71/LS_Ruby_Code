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

# # Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# # New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# =begin 
#   P (understand the Problem)
#     -create a new method that takes an integer as an argument
#     -the body of the method will evaluate the integer as a year in time
#     -the evaluation will calculate the century the year was in
#     -the method will print out a string stating the century number ending with the appropriate suffix (st, nd, rd, or th)
#     -keeping in mind that new centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century 

#   E (Examples)
#     -century(2000) == '20th'
#     -century(2001) == '21st'
#     -century(1965) == '20th'
#     -century(256) == '3rd'
#     -century(5) == '1st'
#     -century(10103) == '102nd'
#     -century(1052) == '11th'
#     -century(1127) == '12th'
#     -century(11201) == '113th'

#   D (Data structures)
#     Input:
#       -Integer
#     Output:
#       -String

#   A (Algorithm)
#     main flow
#     -create a method definition that takes an integer as an argument ( century(year) ) 
#     -use method year_to_century() to translate the (year) into the century the year falls in 
#     -output the name of the century as a string with the proper suffix appended to the century number
#        -new method to translate the century as a string with the proper suffix
#     -end the method definition
 
#       method implementation
#       -year_to_century(year)
#           century, remainder = year.divmod(100)
#           if remainder == 0
#             century
#           else
#             century + 1
      
#       century_suffix(century)
#             convert century to string
#             compare the ending of the century
#             append appropriate suffix to century
#             if century ends in the number 1 suffix is st
#             elsif century ends in the number 2 suffix nd
#             elsif century ends in the number 3 suffix rd
#             else suffix th
            
          
          #   C  (Code)

def year_to_century(year)
  century, remainder = year.divmod(100)
  if remainder == 0
    century
  else
    century + 1
  end
end

def century_suffix(century)
  century_string = century.to_s
  
  final = if century_string[-1] == '1'
            century_string + 'st'
          elsif century_string[-1] == '2'
            century_string + 'nd'
          elsif century_string[-1] == '3'
            century_string + 'rd'
          else
            century_string + 'th'
          end
  
  if century_string[-2..-1] == '11' || century_string[-2..-1] == '12' ||                  century_string[-2..-1] =='13'
    final = century_string + 'th'
  end

  final
end

def century(year)
  century_suffix(year_to_century(year))
end

# p year_to_century(1052)
# p year_to_century(1127)
# p year_to_century(11201)
# p century_suffix(20) == '20th'
# p century_suffix(21) == '21st'
# p century_suffix(23) == '23rd'

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

