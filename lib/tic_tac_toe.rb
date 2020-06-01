class TicTacToe
  WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]
  
  def initialize 
    @board = Array.new(9, " ")
  end
  
  def display_board # input the first 9 WIN_COMBINATIONS
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end 
  
  def input_to_index(input)
    input.to_i - 1
  end
  
  def move(index,token = "X")
    @board[index] = token
  end
  
  def position_taken?(index_position)
    !(@board[index_position].nil? || @board[index_position] == " ")
  end 
  # checks to see whether or not that position is already taken, returns true/false
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  
  def turn_count
    turn_number = 0
    @board.each do |index|
      if index == "X" || index == "O"
        turn_number += 1 
      end
    end
    return turn_number
  end
  
  def current_player
    if turn_count % 2 == 0 # if they're at an even number, the next player is X
    "X"
    else
    "O"
    end
  end
  
  def turn
    puts "Choose a number between 1-9!"
    player_input = gets.chomp 
    index = input_to_index(player_input)
    if valid_move?(index)
      
  end
  
  
  
end