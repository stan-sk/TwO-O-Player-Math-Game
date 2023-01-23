class Game
  attr_accessor :player1, :player2, :turn

  def initialize
    @turn = 1
    @player1 = Players.new("player 1 ")
    @player2 = Players.new("player 2")
  end 


  def start

    puts "P1: #{@player1.lives}/3 lives. P2: #{@player2.lives}/3 lives."
    
    question = Question.new(turn)

    if !question.start
      update_lives(turn)
    end

    change_turn(turn)

  end


  def game_over

    puts "P1: #{@player1.lives}/3 lives. P2: #{@player2.lives}/3 lives."
    puts "🤦🏻🤦🏻🤦🏻 GAME OVER 🤦‍♀️🤦‍♀️🤦‍♀️"

    exit()

  end


  def update_lives(turn)

    turn === 1 ? @player1.lose_a_life : @player2.lose_a_life 

    if @player1.lives === 0 || @player2.lives === 0

      game_over
    end

  end


  def change_turn(turn)

    turn === 1 ? @turn = 2 : @turn = 1

    start
  end

  
end
