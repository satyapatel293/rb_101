=begin
PEDAC Template for each portion of problem 
-------------------- P
input: 
output: 
rules:
  explicit:
    -
    -  
  implicit:
    -
    - 
-------------------- E

-------------------- D

-------------------- A

=end

=begin
tictactoe overview 

_____High Level Game Instructions_____
Game where 2 player mark squares on a 3x3 board 
first player to have 3 squares in a row either horizontally, vertically or diagonally wins 
if board if full with no (3 in a row's) then game is a tie  

___Program Flow___ 
-Game Starts (instructions)
1. display inital empty 3x3 board
2. ask player 1 marks a square
3. computer marks a square
4. display update board state 
5. if winner, display winner
6. if board is full, display tie
7. if neither winner nor board is full, go to #2
8. play again?
9. if yes, go to step #1
10. Good bye!


=end

=begin
1. display inital empty 3x3 board 
-------------------- P
input: no input 
output: empty 3x3 board of - | to seperate regions
rules:
  explicit:
    - board is empty with spaces used as fillers
    - board is displayed to screen 
  implicit:
    -
    - 
-------------------- E
     |     |     
     |     |     
     |     |     
-----+-----+-----
     |     |     
     |     |     
     |     |     
-----+-----+-----
     |     |     
     |     |     
     |     |     

-------------------- D
nested array 
-------------------- A
nested array of 3 subarrays containing 3 numbers each
initalize board as main array
initalize row1, row2 and row3 as sub arrays 
nest subarrays into board 
display board print each subarray with | | surrounding each number on new row 
loop through array and puts each row on screen 
=end 

#my soultion with a not to readable board 
row1 = [" ", " ", " "]
row2 = [" ", " ", " "]
row3 = [" ", " ", " "]
board = [row1, row2, row3]

def print_board(board)
  board.each do |row|
    row.each_with_index do |col, index|
      print "|" if index == 0 
      print "#{col}|"
    end
    puts
  end 
end 
#my inital thought but following gaurdrails at the moment 

#Board eaiser to view with this soultion 