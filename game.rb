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
  
  def move(player, space_number)
    space = @spaces[space_number]
    space.player = player
  end
  
  private
  
  def check_if_game_over(player)
    winning_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                      [0, 3, 6], [1, 4, 7], [2, 5, 8],
                      [0, 4, 8], [2, 4, 6]]
    winning_combos each do |combo|
      return unless combo.all? { |space| space.player == player }
      # insert code for player winning game here
    end
    
    if @spaces.all? { |space| !space.player.nil? }
      # insert code for draw game here
    end
  end
end