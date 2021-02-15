# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

=begin

Problem:
-create a method that takes a string argument and checks to see if the number of parenthesis in the string are even and that they all close each other out
-return true if both conditions are met
-false otherwise 

Rules:
-Note that balanced pairs must each start with a (, not a ).
-even pairs only
-if the last parenthesis is facing out '(' it will be false
-if no parenthesis are included it returns true
-if the first parenthesis is facing in, ')' it returns false

Examples:
balanced?('What (is) this?') == true
=> 4 parenthesis they cancel each other out facing opposite directions

balanced?('What is) this?') == false
=> 1 parenthesis returns false (odd number)

balanced?('What (is this?') == false
=> 1 parenthesis returns false (odd number)

balanced?('((What) (is this))?') == true
=> 6 parenthesis (even number) and they all cancel each other out

balanced?('((What)) (is this))?') == false
=> 7 parenthesis (odd number) returns false

balanced?('Hey!') == true
=> no parenthesis returns true

balanced?(')Hey!(') == false
=> 2 parenthesis (even number) but they face out so they are out of balance a pair starts with (

balanced?('What ((is))) up(') == false
=> 6 parenthesis (even number) but the last one is facing ( so they are not balanced

Data Structures: 
Input : Sting
Output: Boolean

-iterator
-conditional

Algorithm:

1) Create a method definition

2) Split the argument into characters

3) Iterate over the characters
  -if the first character is ")"
    return false
  elsif the last character is "("
    return false

=end

def balanced?(string)
  return false if string[0] == ')' || string[-1] == '(' 
  left_half  = 0
  right_half = 0
  
  string.chars.each do |char|
    if char == '('
      left_half += 1
    elsif char == ')'
      right_half += 1
    end
  end
  
  left_half == right_half
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# def balanced?(string)              # LS Solution
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end