VALID_CHOICES = %w(rock r paper p scissors s lizard l Spock S)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == ('rock' || 'r') && second == ('scissors' || 's')) ||
    (first == ('paper' || 'p') && second == ('rock' || 'r')) ||
    (first == ('scissors' || 's') && second == ('paper' || 'p')) ||
    (first == ('lizard' || 'l') && second == ('Spock' || 'S')) ||
    (first == ('lizard' || 'l') && second == ('paper' || 'p')) ||
    (first == ('Spock' || 'S') && second == ('scissors' || 's')) ||
    (first == ('Spock' || 'S') && second == ('rock' || 'r')) ||
    (first == ('rock' || 'r') && second == ('lizard' || 'l')) ||
    (first == ('paper' || 'p') && second == ('Spock' || 'S')) ||
    (first == ('scissors' || 's') && second == ('lizard' || 'l'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie")
  end
end

def test_method
  prompt('test message')
end

test_method

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(' ,')}")
    choice = Kernel.gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice};  Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('=> Thank you for playing.  Goodbye!')
