require "./space"
require "./player"

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    
    @spaces = []
    9.times { @spaces.push Space.new }
  end
  
  def to_s
    "\n\n"\
      "    0   |1    |2    \n"\
      "     #{@spaces[0]}  |  #{@spaces[1]}  |  #{@spaces[2]}\n"\
      "        |     |     \n"\
      "   -----------------\n"\
      "    3   |4    |5    \n"\
      "     #{@spaces[3]}  |  #{@spaces[4]}  |  #{@spaces[5]}\n"\
      "        |     |     \n"\
      "   -----------------\n"\
      "    6   |7    |8    \n"\
      "     #{@spaces[6]}  |  #{@spaces[7]}  |  #{@spaces[8]}\n"\
      "        |     |     \n"
  end
  
  # returns false if unsuccessful move
  def move(player, space_number)
    space = @spaces[space_number.to_i]
    return false if !space.player.nil?
    space.player = player
    check_if_game_over(player)
  end
  
  private
  
  def check_if_game_over(player)
    winning_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                      [0, 3, 6], [1, 4, 7], [2, 5, 8],
                      [0, 4, 8], [2, 4, 6]]
    winning_combos.each do |combo|
      if combo.all? { |space_number| @spaces[space_number].player == player }
        return "#{player.name} wins!"
      end
    end
    
    if @spaces.all? { |space| !space.player.nil? }
      return "Draw game!"
    end
    "Move succeeded"
  end
end