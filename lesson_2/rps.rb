# A ROCK-PAPER-SCISSORS GAME

VALID_CHOICE = %w(rock paper scissors).freeze

def prompt(message)
  puts "=> #{message}"
end

def display_results(choice, computer_choice)
  if (choice == "rock" && computer_choice == 'scissors') ||
      (choice == "scissors" && computer_choice == 'paper') ||
      (choice == "paper" && computer_choice == 'rock')
    prompt('You won!')
  elsif (choice == "rock" && computer_choice == 'paper') ||
      (choice == "scissors" && computer_choice == 'rock') ||
      (choice == "paper" && computer_choice == 'scissors')
    prompt('You lost!')
  else
    prompt("It's a tie")
  end
end

loop do
  choice = ''
  loop do 
    prompt("Chose one: #{VALID_CHOICE.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICE.include?(choice)
      break
    else
      prompt('That is not a valid choice.')  
    end
  end

  computer_choice = VALID_CHOICE.sample()

  prompt("You chose #{choice}, the computer chose #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Would you like to play again? 'y' for Yes")
  answer = gets.chomp.downcase

  break unless answer.start_with?('y')
end

prompt('Thanks for playing. Good bye!')