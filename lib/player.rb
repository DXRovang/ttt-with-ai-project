class Player 

  attr_reader :token

  def initialize(token)
    @token = token
  end

end


# class TicTacToe


#   def current_player
#     turn_count.even? ? "X" : "O"
#   end

#   def turn
#     puts "Please enter 1-9:"
#     input = gets.strip
#     index = input_to_index(input)
#     if valid_move?(index)
#       play = current_player
#       move(index, play)
#       display_board
#     else
#       turn
#     end
#   end








#   def play
#     puts "Welcome to TicTacToe!"
#     display_board
#     while !over?
#       turn
#     end
#     if won?
#       puts "Congratulations " + winner + "!"
#     else
#       puts "Cat's Game!"
#     end

#   end

# end