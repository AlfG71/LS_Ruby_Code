# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(str)
	str
  words     = str.split
  word_size = []
  word_hash = {}
  
  words.each do |each_word|
  	word_size << each_word.delete("^a-zA-Z").length
  end

  word_size.each do |element| 
    if word_hash[element].nil?
    	word_hash[element] = 1
    else
    	word_hash[element] += 1
    end
  end

  word_hash
end

#Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

