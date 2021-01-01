# require "./lib/board.rb"
require "pry"

class Game

  attr_accessor :board, :player_1, :player_2

  # I would not have figured this out on my own.
  # = Players::Human.new("X")
  # = Players::Human.new("O")
  # = Board.new
  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end

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

  def board
    @board
  end
  
  def current_player
    board.turn_count.even? ? player_1 : player_2
  end

  def won?
    WIN_COMBINATIONS.detect do |win_combo|
      win_combo.all? { |x| @board.cells[x] == "X" } ||
      win_combo.all? { |x| @board.cells[x] == "O" }
    end
  end

  def draw?
    @board.full? && !won?
  end

  def over?
    won? || draw?
  end

  def winner
    if array = won?
    @board.cells[array[0]] 
    end
  end


  def turn
    player = current_player
    current_move = current_player.move(board)
    if board.valid_move?(current_move)
      board.update(current_move, player)
    else
      puts "Invalid input, please enter another number"
      current_player.move(board)
    end
    #binding.pry
  end

  def play
    while !over?
    turn
    end
    if won?
      puts "Congratulations #{winner}!"
    else
      puts "Cat's Game!"
    end
  end

end