class Space
  attr_accessor :player
  
  def to_s
    return " " if @player.nil?
    return @player.letter
  end
end