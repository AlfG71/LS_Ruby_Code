
# Next Featured Number Higher than a Given Value

# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

=begin
	Problem:
	  -create a method that takes an integer as an argument
	  -it will return a new integer representing the value of the next featured number
	  -the next featured number will be a multiple of 7 AND it iwll have unique digits

	  rules:
	  -a featured number is a multiple of 7 AND has unique digits (no digit can appear more than once) && it is odd
	  -if the three conditions are not met, it will return an error message

Examples:

featured(12) == 21
=> the next number in sequence that's a multiple of 7 and the digits are unique

featured(20) == 21
=> the next number in sequence that's a multiple of 7 and the digits are unique

featured(21) == 35
=> the next number in sequence that's a multiple of 7 and the digits are unique

featured(997) == 1029
=> the next number in sequence that's a multiple of 7 and the digits are unique

featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
=> error message

Data Structures:
Input = integer
Output = integer

Agorithm:
1) Create a method definition

2) Iterate starting from the next number possible from the argument
   - if the number is a multiple of 7 and its digits are unique
   	-break
   	-return number
   else
   -puts  "There is no possible number that fulfills those requirements"

=end

def featured(number)
  featured_number = number

    loop do 
      featured_number = featured_number.next
      break if featured_number.digits.size > 10
      if featured_number % 7 == 0 && featured_number.digits == featured_number.digits.uniq && featured_number.odd?
        return featured_number
        break
      end

    end
    "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)