class Player
  @lives = 3
  attr_accessor :input
  attr_writer :lives
 
end

p = Player.new
# puts p.input = "7"
puts p.lives = 2

module.exports = Player