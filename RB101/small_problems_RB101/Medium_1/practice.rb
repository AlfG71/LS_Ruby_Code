=begin
Given a non empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.  You may assume the given string consists of lowercase English letters only.

Example 1:

Input: 'abab'
Output: True
Explanation: 'It's the substring 'ab' twice.

Example 2:

Input: 'aba'
Output: False	

Rules: 
  Explicit requirements:
    -return a boolean value
    -all letters of the strings will contain valid lowercase characters.  

Problem
-Given a string argument for a method 
-It will only contain letters
-Write a method that takes this string argument and returns a boolean
-The boolean will be true if the string has a pattern that can be duplicated wusing all the letters in a given substring, and will return false if any letters are leftover from repeated substrings.
	
Data Structures:
Input  String
Output Boolean

Algorithm
Take the given word and check for a repetitive pattern.
If the pattern gets repeated without any letters of the word being left out, output the word True
Otherwise, output the word False

pseudocode
def repeated_substring_pattern(str)
  check str for a repetitive pattern

end

=end

# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aba") == false
# p repeated_substring_pattern("aabaaba") == false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true