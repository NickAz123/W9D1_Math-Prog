class Question
  attr_accessor :answer

  def initialize()
    @answer = 0
  end

  def ask_question()
    num1 = rand(100)
    num2 = rand(100)
    @answer = num1 + num2
    "What is #{num1} + #{num2}?"
  end

  def check(res)
    if @answer != res.to_i
      puts "Incorrect!"
      return false
    end

    puts "Correct!"
    return true
  end

end