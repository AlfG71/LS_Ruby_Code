# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.


=begin 
  P (understand the Problem)
    -write a method (palindromic_number?)
    -the method will take an integer argument ( palindromic_number?(int) )
    - the body of the method will evaluate if the integer argument reads the same as entered and read backwards

  E (Examples)
    -palindromic_number?(34543) == true
    -palindromic_number?(123210) == false
    -palindromic_number?(22) == true
    -palindromic_number?(5) == true

  D (Data srtuctures)
    Input:
      -Integer
    Output:
      -Boolean
  A (Algorithm)
    -define a method with a parameter ( palindromic_number?(int) )
    -convert the integer into an array
    -do a comparison of the new array of integers with the reverse of that array
    -finish method definition 

  C (Code)
    def palindromic_number?(int)
    	int == int.digits
    end

=end

def palindromic_number?(int)
  p int.to_s.to_i == int.to_s.reverse.to_i
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true