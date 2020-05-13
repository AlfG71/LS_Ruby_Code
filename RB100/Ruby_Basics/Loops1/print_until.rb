#Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]
x = 1

until x == 0
	puts numbers.each {|n| n}
	x -= 1
end
