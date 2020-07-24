require 'pry'
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}
sorted_word = ''
words.each do |word|
 sorted_word = word.split('').sort.join

 if result.include?(sorted_word)
 	result[sorted_word].push(word)
 else
 	result[sorted_word] = [word]
 end
 
 # result
end

result.each_value {|value| p value}

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)