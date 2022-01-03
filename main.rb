
require './game.rb'

p1=Player.new("Player1")
p2=Player.new("Player2")
g1= Game.new(p1,p2);
g1.play
