# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# (1..99).each {|n| puts n if n.even?}

1.upto(99) do |num|
	puts num if num.even?
end
