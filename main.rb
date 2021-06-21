require './player'
require './loop'

p1 = Player.new(1)
p2 = Player.new(2)

newGame = GameLoop.new(p1, p2)
newGame.loop()