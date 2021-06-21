class Player

  attr_accessor :lives

  def initialize(num)
    @name = "Player #{num}"
    @lives = 3
  end

  def name
    @name
  end

  def score
    @lives
  end

  def update(res)
    if res == false
      @lives -= 1
      return
    end
  end

end