class Space
  attr_accessor :player
  
  def to_s
    return " " if @player.nil?
    @player.letter
  end
end