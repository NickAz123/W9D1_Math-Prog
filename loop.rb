require "./questions"

class GameLoop

  attr_accessor :current_player, :current_score

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_players = [p1, p2]
    @current_player = @current_players[0]
    @current_score = 3
  end

  # Swaps current player
  def swap_player
    @current_players[0], @current_players[1] = @current_players[1], @current_players[0]
    @current_player = @current_players[0]
  end

  def loop
    question = Question.new

    while @current_score != 0
      puts "--NEW TURN--"

      # Asks the question generated using the question class
      puts "#{@current_player.name}: #{question.ask_question}"

      # Captures the response from terminal and sends it to check
      response = gets.chomp
      outcome = question.check(response)

      # Updates the current player score based on the result of the check
      @current_player.update(outcome)
      @current_score = @current_player.score

      # Outputs current score, swaps current player, and repeats loop if scores havent hit 0
      puts "Scores: #{@p1.name}: #{@p1.score}/3, #{@p2.name}: #{@p2.score}/3"
      swap_player
    end

    # Once loop breaks, prints the player who's score didn't hit 0 first
    puts "Game Over! #{@current_players[0].name} wins!"

  end

end