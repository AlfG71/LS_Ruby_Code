def reverse_words(string)
	words = []

	string.split.each do |word|
		word.reverse! if word.length >=5
		words << word
	end

	words.join(' ')
end

puts reverse_words('hi there')
puts reverse_words('Professional')          
         # =>  lanoisseforP
puts reverse_words('Walk around the block') 
         # => Walk  dnuora the kcolb
puts reverse_words('Launch School')         
         # =>  hcnuaL loohcS

# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

=begin
  P  (Understand the problem)
	     -Write a method taking one argument
	     -The argument will contain a string of one or more words
	     -The method will return a word reversed if it contains 5 characters or more
	     -Words that contain 4 or less characters will print out normally
	     -The string will consist only of letters and spaces
	     -Spaces will be included in the returned string when more than one word is included

  E  (Examples)

       -puts reverse_words('Professional')          
         # =>  lanoisseforP
       -puts reverse_words('Walk around the block') 
         # => Walk  dnuora the kcolb
       -puts reverse_words('Launch School')         
         # =>  hcnuaL loohcS

  D  (Data structures)
       Input:
         -String
         -Method

       Output:
         -String

  A  (Algorithm)
       -Define a method named reverse_words(string)
       -The body of the method will take the each word in string and *count the characters in each word
       -The method will return all the words in the string with the ones that contain 5 characters or more in reverse fashion

  C  (Code)
       def reverse_words(string)
         new_string = string.split
         for new_string.map |x| 
         if x.count >= 5
         	x.reverse.join
         	else
         		x
         		break
         		end
         		end
=end




