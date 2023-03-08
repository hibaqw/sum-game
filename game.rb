require './player'
class Game
  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end
  attr_accessor :current_player
end

p1 = Player.new()
p2 = Player.new()
g = Game.new(p1, p2)