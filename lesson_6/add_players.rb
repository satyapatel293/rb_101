require "pry"

BANNER = <<~BNR
████████╗██╗ ██████╗████████╗ █████╗  ██████╗████████╗ ██████╗ ███████╗
╚══██╔══╝██║██╔════╝╚══██╔══╝██╔══██╗██╔════╝╚══██╔══╝██╔═══██╗██╔════╝
   ██║   ██║██║        ██║   ███████║██║        ██║   ██║   ██║█████╗  
   ██║   ██║██║        ██║   ██╔══██║██║        ██║   ██║   ██║██╔══╝  
   ██║   ██║╚██████╗   ██║   ██║  ██║╚██████╗   ██║   ╚██████╔╝███████╗
   ╚═╝   ╚═╝ ╚═════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝   ╚═╝    ╚═════╝ ╚══════╝ 
BNR

WINNIG_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
               [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
               [[1, 5, 9], [3, 5, 7]]              # diags

INITIAL_MARKER = ' '
PLAYER_MARKER  = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd, score, round) #TODO make board nicer and switch to large messafe format
  system "clear"
  puts <<~MSG          
            Current Score
   Player ['X']: #{score[:player_score]} | Computer['O']: #{score[:computer_score]}

               Round #{round}
            
               |     |
            #{brd[1]}  |  #{brd[2]}  |   #{brd[3]}
               |     |
          -----+-----+-----
               |     |
            #{brd[4]}  |  #{brd[5]}  |   #{brd[6]}
               |     |
          -----+-----+-----
               |     |
            #{brd[7]}  |  #{brd[8]}  |   #{brd[9]}
               |     |
  
  MSG
end
# rubocop: enable Metrics/AbcSize

def intro_message
  system 'clear'
  puts <<~MSG 

  #{BANNER}                     
  
               First player to win 5 rounds wins the game
      Each square is associated with a number from 1-9 like this.. 


                              1 | 2 | 3
                              ---------
                              4 | 5 | 6
                              ---------
                              7 | 8 | 9


  MSG
  prompt "Press enter to play!"
  gets
end

def initalize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, delimiter=', ', last_word="or")
  case array.length
  when 0 then ''
  when 1 then array.first.to_s
  when 2 then array.join(" #{last_word} ")
  else 
    array[-1] = "#{last_word} #{array[-1]}"
    array.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Chose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that's not a vaild choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  attacking_move = detect_near_win(brd, COMPUTER_MARKER)
  defensive_move = detect_near_win(brd, PLAYER_MARKER)
  
  square = if attacking_move 
             attacking_move
           elsif defensive_move 
             defensive_move 
           elsif brd[5] == INITIAL_MARKER
             5
           else
             empty_squares(brd).sample
           end

  brd[square] = COMPUTER_MARKER
end

def detect_near_win(brd, marker)
  move = nil 
  WINNIG_LINES.each do |line|
    markers_on_line = brd.values_at(*line)
    if markers_on_line.count(marker) == 2 && 
       markers_on_line.count(INITIAL_MARKER) == 1
      empty_marker_on_line = empty_squares(brd).select { |num| line.include?(num)}.first
      move = empty_marker_on_line
    end
  end
  move
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNIG_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end
  
def update_score!(brd, score)
  case detect_winner(brd)
  when "Player" then score[:player_score] += 1
  when "Computer" then score[:computer_score] += 1
  else nil 
  end 
end 


def who_goes_first
  prompt "Who decides who goes first?"
  puts "1) Player or 2) computer"
  decider = nil
  loop do 
    decider = gets.chomp
    break if decider == '1' || decider == "2"
    prompt "Invalid input.. please enter 1 for player or 2 for computer"
  end

  if decider == '1'
    prompt "Who do you want to go first?"
    puts "1) Player or 2) computer"
    answer = nil
    loop do 
      answer = gets.chomp
      break if answer == '1' || answer == "2"
      prompt "Invalid input.. please enter 1 for player or 2 for computer"
    end
  else
    answer = %w(1 2).sample
  end
  
  case answer
  when "1" then "Player"
  when "2" then "Computer"
  end
end

def place_piece!(brd, current_ply)
  current_ply == "Player" ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def alternate_player(current_ply)
  current_ply == "Player"? current_ply = "Computer" : current_ply = "Player"
end

loop do #main loop
  intro_message
  score = {player_score: 0, computer_score: 0} # reset scores each game
  round = 1
  current_player = who_goes_first

  loop do #game loop
    board = initalize_board #reset board each round

    loop do #round loop
      loop do
        display_board(board, score, round)
        place_piece!(board, current_player)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
      end
    end

    update_score!(board, score)
    display_board(board, score, round)
    
    if someone_won?(board)
      prompt "Round #{detect_winner(board)}!"
    else
      prompt "It's a tie!"
    end

    if score.values.include?(5)
      prompt "#{detect_winner(board).upcase} WON THE GAME!" #TODO add winning Screen!
      break
    end

    round += 1
    prompt "wait for next round..."
    sleep(1.5)
  end

  prompt "Play agian? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"

