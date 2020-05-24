LANGUAGE = 'en'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
	MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

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

prompt(messages('welcome', 'es'))

name = ''

loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt(messages('valid_name', 'es'))
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_number', 'es'))
    number1 = Kernel.gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(messages('hmm', 'es'))
    end
  end

  number2 = ''

  loop do
    prompt(messages('second_number', 'es'))
    number2 = Kernel.gets.chomp

	  if valid_number?(number2)
      break
	  else
      prompt(messages('hmm', 'es'))
    end
	end

calculation_prompt = <<-MSG
    What kind of calculation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(calculation_prompt)

calculation_input = ''

  loop do
    calculation_input = Kernel.gets.chomp 

    if %w(1 2 3 4).include?(calculation_input)
      break
        else
      prompt(messages('choose', 'es'))
    end
  end

  prompt("#{operation_to_message(calculation_input)} the two numbers...")

	result = case calculation_input
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

  prompt(messages('another', 'es'))
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('thanks', 'es'))
