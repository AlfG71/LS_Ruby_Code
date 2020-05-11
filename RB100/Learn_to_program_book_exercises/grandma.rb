puts "Hi, I am deaf Grandma, what's that again?"

year = rand(1930..1950)

ask_grandma = "What's that again?"

while true 
	answer = gets.chomp

	if answer != answer.upcase 
		puts "HUH?!  SPEAK UP, SUNNY!" 
		puts ask_grandma
		answer_again = gets.chomp

	else/if
		answer == answer.upcase 
		puts "NO, NOT SINCE #{year}" + "!"
		puts ask_grandma
	

end
	#break if answer == "BYE"
end