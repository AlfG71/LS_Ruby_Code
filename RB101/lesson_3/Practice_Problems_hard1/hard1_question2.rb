#What is the result of the last line in the code below?

greetings = { a: 'hi' }                   #=> new hash called greeting with a key:value pair of {a: 'hi'}
informal_greeting = greetings[:a]         #=> referencing the value of the greetings hash key :a
informal_greeting << ' there'             #=> informal_greeting object mutated the value of the object, the value of the key :a inside the greetings variable has been changed (mutated)

puts informal_greeting  #  => "hi there"
puts greetings          # => "{a: 'hi there'}  