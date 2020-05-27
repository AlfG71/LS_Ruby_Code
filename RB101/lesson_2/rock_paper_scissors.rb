# Rock paper scissors game

VALID_CHOICES = %w(rock paper scissors)

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(' ')}")
    choice = Kernel.gets.chomp

    break if VALID_CHOICES.include?(choice)
    prompt("That's not a valid choice...")
  end

  computer_choice = VALID_CHOICES.sample

  display_results(choice, computer_choice)

  prompt("You chose: #{choice}; computer chose: #{computer_choice}")

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt('Thank you for playing!')
prompt('Come again...')
