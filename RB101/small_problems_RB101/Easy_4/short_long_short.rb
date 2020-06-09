# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

=begin 
  P (understadn the Problem)
    -create a method
    -the method will have two parameters that take strings
    -the method will evaluate the length of each string 
    -the method will concatenate the two strings printing the shorter string twice with the longer string in between the twice printed shorter string

  E (Examples)
    -short_long_short('abc', 'defgh') == "abcdefghabc"
    -short_long_short('abcde', 'fgh') == "fghabcdefgh"
    -short_long_short('', 'xyz') == "xyz"

  D (Data structures)
    Input:
      -String
    Output:
      -String

  A (Algorithm)
    -create a new method definition with two parameters ( short_long_short(str1, str2) )
    -evaluate the length of each string
    -compare the two strings
    -print a new string made up of the shorter string, followed by the longer string and ending with the shorter string printed once again
    -end the method definition

  C (Code)
    def short_long_short(str1, str2)
      str1_size = str1.length
      str2_size = str2.length
      if str1_size > str2_size
      	puts "#{str2_size}" + "#{str1_size}" + "#{str2_size}"
      else
        puts "#{str1_size}" + "#{str2_size}" + "#{str1_size}"
      end	
    end

=end

def short_long_short(str1, str2) 
  if str1.length > str2.length
  	puts "#{str2}" + "#{str1}" + "#{str2}"
  else
    puts "#{str1}" + "#{str2}" + "#{str1}"
  end	
end


short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
