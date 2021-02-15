# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

=begin
  Problem:

  - Create a method that takes a year as an input and returns the century that year falls on
  - It will return a string consisiting of the century number ending with the corresponding suffix to the ending number of the string (st, nd, rd, or th)

  Examples:
  
  -century(2000) == '20th'
  -century(2001) == '21st'
  -century(1965) == '20th'
  -century(256) == '3rd'
  -century(5) == '1st'
  -century(10103) == '102nd'
  -century(1052) == '11th'
  -century(1127) == '12th'
  -century(11201) == '113th'

  Data Structures:
    Input  = Integer
    Output = String

  Rules: 
    if century ends in 1 then returning string ends in "st" except for the teens
    if century ends in 2 then returning string ends in "nd" except for the teens
    if century ends in 3 then returning string ends in "rd" except for the teens
    everythig else the string ends in 'th' 
    new century starts in year ending on 01
    if the year ends in 00 it is part of the previous century

  Algorithm:
  
    1) Create a method definition century(year)
      -if 0 - 100 then "1st"
      -elsif 101 - 999 then (num[0] + 1) = century  
      -elsif 1000 - 9999 then (num[0, 1] + 1) = century
      -else num[0, 1, 2] + 1 = century
      -convert argument into a string
    2) Create a helper method to figure out the century and add the corresponding suffix suffix(int)
      -add appropriate suffix using helper method
        - if int ends in 1 && int[-2] != 1 then suffix == 'st'
        -elsif int ends in 2 && int[-2] != 1 then suffix == 'nd'
        -elsif int ends in 3 && int[-2] != 1 then suffix == 'rd'
        -else suffix == 'th'
    2) Convert the integer argument into a string and add the suffix
    3) Add the appropriate suffix to the converted integer
    4) Return the new String

=end

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)                             LS SOLUTION
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# def century(year)
#   century = 0

#   if (0..100).include?(year)
#     century = 1
#   elsif year.to_s[-1, 2].to_i == 00
#     century = year.to_s[0, 2].to_i 
#   elsif (101..999).include?(year) && year.to_s[-1].to_i != 1
#     century = year.to_s[0].to_i + 1 
#   elsif (1000..9999).include?(year) && year.to_s[-1].to_i != 1
#     century = year.to_s[0, 2].to_i + 1
#   elsif (1000..9999).include?(year) && year.to_s[-1].to_i == 1
#     century = year.to_s[0, 2].to_i + 1
#   else (10000..99999).include?(year) 
#     century = year.to_s[0, 3].to_i + 1 
#   end    

#   suffix(century)
# end

# def suffix(num)
#   unless num.to_s[-2].to_i == 1
#     if num.to_s[-1].to_i == 1
#       return num.to_s + 'st'
#     elsif num.to_s[-1].to_i == 2
#       return num.to_s + 'nd'
#     elsif num.to_s[-1].to_i == 3
#       return num.to_s + 'rd'
#     end
#   end

#   num.to_s + 'th'
# end

def suffix(century)
  exceptions = %w(11 12 13)

  return century.to_s + "th" if exceptions.include?(century.to_s[-2, 2])

  case century.digits.reverse.last
  when 1 then century.to_s + "st"
  when 2 then century.to_s + "nd"
  when 3 then century.to_s + "rd"
  else century.to_s + "th"
  end
end

def century(year)
  century = (year / 100) 

  if year.digits.reverse.last == 0
    century 
  else
    century += 1
  end

  suffix(century)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
