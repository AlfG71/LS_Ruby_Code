# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}


# The return value should look like this:

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

=begin 
  P
  -given a nested (multidimesional) hash
  -iterate through the hash value elements
  -return a new array populated with the colors of the fruits and the sizes of the vegetables
  -the sizes should be uppercased and the colors should be capitalized.

  E
	hsh = {
	  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
	  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
	  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
	  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
	  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
	}
	# The return value should look like this:

	# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]  

  D
  Input
    -hash
  Output
    -array

  A
  -iterate through each key/value pair of the hash hsh
  -if the value[:type]includes the string 'fruit'
  	-print the value[:colors]capitalized
  -if the value[:type]includes the string 'vegetable'
    -print the value[:size]uppercased
  -return an  array including all the new printed values as elements  	

  C
  hsh.map do |k, v|
  	if v[:type].include?('fruit')
  		 v[:colors].map do |str|
  		 	str.capitalize
		 	 end
	 	elsif
       v[:type].include?('vegetable')
       v[:colors].map do |str|
       	str.upcase
       end
    end
  end

=end

result = hsh.map do |k, v|
  	if v[:type].include?('fruit')
  		 v[:colors].map do |str|
  		 	str.capitalize
		 	 end
	 	elsif
       v[:type].include?('vegetable')
       v[:size].upcase
    end
  end

p result