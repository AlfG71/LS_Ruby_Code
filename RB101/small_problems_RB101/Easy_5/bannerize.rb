
# Write a method that will take a short line of text, and print it within a box.

# Example:
=begin
input: string
output: string
-print an empty box if the input is an empty string
-print a box that encapsulates the string argument
-the string will print in the middle of the box (centered)

Example:
print_in_box('')
+--+
|  |
|  |
|  |
+--+

Algorithm:
-construct a string of lines and + signs as my default box output
  print +--+ on line 1
  print |  | on lines 2 - 4
  print +--+ on line 5
-figure out how to expand that default output so that it fits the string argument
  -assign the length of the argument into a new variable
  -add the value of the length to print out extra space in the default box
  -print the string argument on line 3
  -lines 2 and 4 will add extra space characters
  -lines 1 and 5 will add extra dashes and concatenate '+' to the end
    -create a formula for adding dashes based on the length of the string argument
      -'str length' plus two dashes
        - + '-'*string length' + -
=end

def print_in_box(str)
  expand_number = str.length
  
  puts '+-' + ('-' * expand_number) + '-+'
  puts '| ' + (' ' * expand_number) + ' |'
  puts "| #{str} |"
  puts '| ' + (' ' * expand_number) + ' |'
  puts '+-' + ('-' * expand_number) + '-+'
end



	