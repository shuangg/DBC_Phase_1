class GuessingGame

  attr_reader :init_guess
  attr_accessor :solved

  def initialize(guess)
    @init_guess = guess
    @solved = false
  end

  def guess(guess)
    self.solved = false
    if guess > init_guess
      :high
    elsif guess == init_guess
      self.solved = true
      :correct
    else
      :low
    end 
  end

  def solved?
    solved
  end
end


game = GuessingGame.new(10)

game.solved? # => false

game.guess(5) # => :low

game.guess(20) # => :high

game.solved? # => false

game.guess(10) # => :correct

game.solved? # => true

game.guess(5) # => :low

game.solved? # => false