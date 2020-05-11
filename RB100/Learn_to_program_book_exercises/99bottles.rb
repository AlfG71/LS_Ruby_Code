puts "If you type the number 99, I will sing you a song..."

answer = gets.chomp.to_i

until answer == 0
 	puts "#{answer} bottles of beer on the wall, #{answer} bottles of beer..."
  puts "You take one down and pass it around, #{answer - 1} bottles of beer on the wall"
  	answer -= 1
end
	
