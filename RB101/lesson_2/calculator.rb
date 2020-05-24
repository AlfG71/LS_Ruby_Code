# CLI Calculator

# -Ask user for two numbers
# -Ask user for an operation to perform (sum, subtract etc...)
# -Perform the operation on the two numbers
# -Output the result

# -Use Kernel.gets() method to retrieve user input
# 	-Call chomp() on Kernel.gets() to remove newline 
# 		Kernel.gets().chomp()

# -Use Kernel.puts() method to display output

# answer = Kernel.gets()  
# Kernel.puts (answer)
LANGUAGE = 'es'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

#puts MESSAGES.inspect

MESSAGES['es']['welcome']

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
	#input.is_a? == Numeric
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

# def valid_number?(num)
# #   loop do
# #   number = gets.chomp
# #   break if number?(number)integer
# #   puts "That is not a number."
# # end
#   num.to_i != 0
# end

def operation_to_message(op)
  case op
  when '1'
   'Adding'
  when '2'
	 'Subtracting'
  when '3'
	 'Multiplying'
  when '4'
	 'Dividing'
  end
end

prompt(messages('welcome', LANGUAGE))

name = ''

loop do 
  name = Kernel.gets.chomp
  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end
prompt("Hi #{name}!")

loop do # Main loop

  number1 = ''

  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets.chomp

    if number?(number1)
      break
    else
	    prompt(messages('hmm', LANGUAGE))
    end
  end

  number2 = ''

  loop do 
    prompt(messages('second_number', LANGUAGE))
    number2  = Kernel.gets.chomp

    if number?(number2)
      break
    else
      prompt(messages('hmm', LANGUAGE))
    end
   end

operator_prompt = <<-MSG 
  What operation would you like to perform? 
  1) add 
  2) subtract 
  3) multiply 
  4) divide
 MSG

prompt(operator_prompt)	
	
operator = ''
loop do 
  operator = Kernel.gets.chomp 

  if %w(1 2 3 4).include?(operator)
    break
  else
    prompt(messages('choose', LANGUAGE))
  end
end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
	         when '1'
		         number1.to_i + number2.to_i
	         when '2'
		         number1.to_i - number2.to_i
	         when '3'
		         number1.to_i * number2.to_i
	         when '4'
		          number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt(messages('another', LANGUAGE))
    answer = Kernel.gets.chomp
    break unless answer.downcase.start_with?('y')
end

prompt(messages('thanks', 'es'))