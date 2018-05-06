require "./game.rb"

alice = Player.new("Alice", "X")
bob = Player.new("Bob", "O")

game = Game.new(alice, bob)
game.move(alice, 0)
game.move(bob, 4)
game.move(alice, 8)
game.move(bob, 2)
game.move(alice, 6)
game.move(bob, 3)
game.move(alice, 1)
game.move(bob, 7)
game.move(alice, 5)
puts game