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
      "      |   |   \n"\
      "    #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]}\n"\
      "      |   |   \n"\
      "   -----------\n"\
      "      |   |   \n"\
      "    #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}\n"\
      "      |   |   \n"\
      "   -----------\n"\
      "      |   |   \n"\
      "    #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]}\n"\
      "      |   |   \n"
  end
end