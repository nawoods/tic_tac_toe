require "./game.rb"

puts "Welcome to tic-tac-toe! It's a game where you tic, you tac, and you toe."

loop do
  puts "Enter player 1 name (X):"
  player1_name = gets.chop
  puts "Enter playet 2 name (O):"
  player2_name = gets.chop
  
  player1 = Player.new(player1_name, "X")
  player2 = Player.new(player2_name, "O")
  game = Game.new(player1, player2)
  
  current_player = player1
  puts game
  
  loop do
    print "#{current_player.name}, please choose a space (0-8): "
    while true
      space_number = gets.chop
      break if space_number.match(/[0-8]/)
      puts "That is not a valid selection. Please enter a number from 0 to 8"
    end
    
    play_result = game.move(current_player, space_number)
    if play_result
      puts play_result
      puts game
      break unless play_result == "Move succeeded"
    else
      puts "That space has already been taken! Please choose another one"
      next
    end
      
    current_player = (current_player == player1 ? player2 : player1)
  end
  
  while true
    print "Play again? (y/n): "
    answer = gets.chop.downcase
    break if answer == "y" || answer == "n"
    puts "Please enter 'y' or 'n'"
  end
  
  break if answer == "n"
end