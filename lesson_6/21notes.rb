def initalize_deck
  values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  suits = %w(H D S C)
  suits.product(values).shuffle
end

def draw_card!(deck)
  card = deck.shift
end

def calculate_total(cards)
  total = 0

  values = cards.map { |card| card[1] }

  values.each do |value|
    if value == 'A'
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    total -= 10 if total > 21
  end

  total
end

def deal_cards(deck, player, dealer)
  [player, dealer].each do |turn|
    2.times { |_| turn << draw_card!(deck) }
  end
end

def busted?(score)
  score > 21
end

def joinor(array)
  if array.length == 2
    array.join(" and ")
  else
    array[-1] = "and #{array[-1]}"
    array.join(', ')
  end
end

def display_table(player, dealer)
  names = { 'J' => 'Jack', 'Q' => 'Queen', 'K' => 'King', 'A' => 'Ace' }
  player_values = player.map do |card|
    name = card[1]
    name = names[name] if names.include?(name)
    name
  end
  dealer_values = dealer.map do |card|
    name = card[1]
    name = names[name] if names.include?(name)
    name
  end

  system 'clear'
  puts "Dealer: #{dealer_values[0]} and unknown card"
  puts "Player: #{joinor(player_values)}"
end

def compare_totals(player_score, dealer_score)
  if player_score > dealer_score
    "player"
  elsif player_score < dealer_score
    'dealer'
  else
    'TIE NO ONE'
  end
end

def hit_or_stay
  answer = nil 
  loop do 
    puts 'hit or stay'
    answer = gets.chomp
    break if %w(hit stay).include?(answer)  
    puts 'Please enter'
  end  
  answer
end

def detect_winner(player_total, dealer_total)
  if player_total > 21 
    :player_bust
  elsif dealer_total > 21
    :dealer_bust
  elsif player_total > dealer_total
    :player_win
  elsif dealer_total > player_total
    :dealer_win
  else 
    :tie
  end 
end 

def play_again #TODO this will alway produce true in current state
  puts 'Would you like to play again?'
  puts 'yes or no?'
  answer = gets.chomp
  !!answer
end 

def display_winner(player_total, dealer_total)
  result = detect_winner(player_total, dealer_total)
  case result
  when :player_bust then puts "DEALER WINS! Player busted"
  when :dealer_bust then puts "PLAYER WINS! Dealer busted"
  when :player_win then puts'Player beats dealer!'
  when :dealer_win then puts 'Dealer beats player!'
  else puts "Tie Game!"
  end 
  sleep(3)
end 


loop do
  player = []
  dealer = []
  deck = initalize_deck
  deal_cards(deck, player, dealer)
  player_score = calculate_total(player)
  dealer_score = calculate_total(dealer)

  display_table(player, dealer)
  winner = nil

  loop do
    loop do
      answer = hit_or_stay
      break if answer == 'stay'
      player << draw_card!(deck)
      player_score = calculate_total(player)
      display_table(player, dealer)
      break if busted?(player_score)
    end

    if busted?(player_score)
      display_winner(player_score, dealer_score)
      # play_again ? next : break
    end 

    loop do
      break if dealer_score >= 17 || busted?(dealer_score)
      dealer << draw_card!(deck)
      dealer_score = calculate_total(dealer)
    end

    display_winner(player_score, dealer_score)
    # play_again ? next : break
  end
end
