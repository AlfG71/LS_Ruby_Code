puts "Please enter the numerator: "
numerator = gets.chomp.to_i

puts "please enter the denominator: "
denominator = gets.chomp.to_i

puts numerator / denominator

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end




