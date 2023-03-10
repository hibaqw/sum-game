require './game'
require './player'

def main 
  p1 = Player.new
  p2 = Player.new
  game = Game.new(p1,p2)

  while true
    game.generate_question()
    game.ask_question()
    ans = gets.chomp
    response = game.game_response(ans)
    if (!response)
      game.reduce_lives
    end
    game.printLives()
    if game.current_player.lives === 0
      break
    end
    game.change_player()
  end
  game.game_over
end

main()


  