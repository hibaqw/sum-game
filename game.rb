require './player'
require './question'
class Game
  
  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    player1.lives = 3
    player2.lives = 3
    @current_player = player1
    @q = Question.new
  end
  def generate_question()
    @q.generateOperands()
    @operand1= q.op1
    @operand2= q.op2
    @answer = q.answer
  end
  def ask_question()
    player = ""
    if current_player = @player1
      player = player + "Player 1"
    else
      player = player + "Player 2"
    end
    puts " #{player} What does #{q.op1} plus #{q.op2} equal?"
  end

  def game_response(player_response)
    @message = ""
    puts @answer
    if (player_response == @answer)
      message = "YES! You are correct!"
    else 
      message = "Seriously? No!"
    end
    puts message
    puts "-----  NEW TURN -----"
  end

  def change_player
    if @current_player === @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  def reduce_lives
    @current_player.lives = @current_player.lives - 1
  end

  def game_over
    puts "----- GAME OVER -----"
    puts "----- Good bye! -----"
  end

  attr_reader :q, :operand1, :operand2
  attr_writer :current_player
  def printLives
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end
end 


