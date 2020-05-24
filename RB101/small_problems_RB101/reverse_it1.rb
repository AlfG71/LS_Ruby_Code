# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

=begin
  P  (Understand the problem)
    -Write a method that takes one argument
    -The argument for the method is a string
    -The method will return the string 
    -The words in the string will be in a reverse order

  E  (Examples)

    -puts reverse_sentence('') == ''
    -puts reverse_sentence('Hello World') == 'World Hello'
    -puts reverse_sentence('Reverse these words') == 'words these Reverse'

      -The tests above should print true.

  D  (Data strructures)
    Input:

      -String
      -Method
    Output:
      
      -String
  
  A  (Algorithm)
    -Define method called reverse_sentence(string)
    -Turn string sentence into an array
    -Reverse the array and turn it back into a string

  C
    def reverse_sentence(string)
    	sentence = string.split
    	sentence.reverse
    end
=end


def reverse_sentence(string)
   string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


