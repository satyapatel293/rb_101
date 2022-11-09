VAILD_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'x' => 'scissors',
  'l' => 'lizard',
  's' => 'spock'
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  win_combos = {
    'rock' => ["scissors", "lizard"],
    'paper' => ["spock", "rock"],
    'scissors' => ["paper", "lizard"],
    'lizard' => ["paper", "spock"],
    'spock' => ["rock", "scissors"]
  }

  win_combos[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do # main loop
  player_score = 0
  computer_score = 0

  loop do # game loop
    player_choice = ''
    loop do
      prompt("Choose one: #{VAILD_CHOICES.values.join(', ')}")
      puts <<-MSG
        "R" for rock 
        "P" for paper
        "X" for scissors
        "S" for spock
        "L" for lizard
      MSG
      choice = gets.chomp.downcase

      if VAILD_CHOICES.include?(choice)
        player_choice = VAILD_CHOICES[choice]
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VAILD_CHOICES.values.sample

    if win?(player_choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, player_choice)
      computer_score += 1
    end

    prompt "You chose: #{player_choice}; Computer chose: #{computer_choice}"
    display_results(player_choice, computer_choice)
    prompt "Player:#{player_score}; Computer:#{computer_score}"

    if player_score == 3
      prompt "Player is the GRAND WINNER!"
      prompt "GAME OVER"
      break
    elsif computer_score == 3
      prompt "Computer is the GRAND WINNER!"
      prompt "GAME OVER"
      break
    end
  end # game loop
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end # main loop
