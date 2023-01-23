class Question
  attr_accessor :turn

  def initialize(turn)
    @turn = turn
  end

  def start
    num1 = rand(1..20)
    num2 = rand(1..20)
    
    puts "<<<< New Turn >>>>"
    puts "No Calculator Allowed !!!!!"
    puts "Player #{turn}: What is #{num1} + #{num2}?"
    print "Put in your answer >> "
    
    answer = $stdin.gets.chomp.to_i

    if answer === num1 + num2
      puts "⭐️⭐️⭐️ That's right !!! ⭐️⭐️⭐️"
      return true
    else 
      puts "uh oh 👀 🙈🙈🙈🙈🙈🙈"
      return false
    end
  end

end