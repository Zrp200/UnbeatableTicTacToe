require_relative 'player.rb'

class ComputerPlayer < Player
  def initialize(name); super name; end

  def get_move(game, mark) # Goes through the board to find empty move and returns arry of empty spaces
    pos_moves = possible_moves(game.board)
    random_move(pos_moves)
  end

  def random_move(possible_moves); possible_moves.sample; end

  private

  def possible_moves(board)
    possible = []
    board.grid.each_with_index do |row, row_idx|
      row.each_with_index do |col, col_idx|
        possible << [row_idx, col_idx] if col.nil?
      end
    end
    possible
  end
end
