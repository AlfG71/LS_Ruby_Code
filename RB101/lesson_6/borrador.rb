

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
 
  if result.has_key?(key)
       result[key].push(word)
  else
      result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end


# nested_words = words.map {|each| each.chars}
# sorted_words = nested_words.map {|each_arr| each_arr.sort.}
# anagram_list = []
# new_sorted_words = sorted_words.select do |each_arr|
# 	anagram_list << each_arr if each_arr == each_arr
# end


# p new_sorted_words
