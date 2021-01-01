require "pry"

module Players

  class Computer < Player

    def move(board)
      board.cells.each_with_index do |cell, index|
        if board.cells[index] == " "
          return "#{index + 1}"
        end
      end
    end

  end

end
