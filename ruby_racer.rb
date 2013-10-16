require_relative 'ruby_racer_utils'
 
 
class Player
  attr_reader :name, :avatar
  attr_accessor :position 
 
  def initialize(name, avatar, position = 0)
    @name     = name
    @avatar   = avatar
    @position = position
   # @row      =row
  end
end
 
class RubyRacer
 
 
  attr_reader :players, :length
   
 
  # PLAYERS = ['A', 'B']
  # PLAYERS = { "keith" => "K", "thomas" => "T"}
  def initialize(players, length = 30)
    @die = Die.new
    @players = [] # array of player objects
    players.each do |name, avatar|
      @players << Player.new(name, avatar) # creating a single player instance
    end
    @length = length  # length of board
    # @row = " |" * length + "\n" # String.new(" |" * length + "\n")
    # @board = []
    # players.length.times { |x| @board << @row }
    # @num_of_rows = players.size
    # @board = @row * @num_of_rows
  end
 
 
  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
 
 
  def finished?
    players.any? {|player| player.position >= @length }
  end
  # Returns the winner if there is one, +nil+ otherwise
 
 
  def winner
    players.select {|player| player.position >= @length }.first.name 
  end
  # Rolls the dice and advances +player+ accordingly
 
 
  def advance_player!(player)
    player.position += @die.roll
  end
  # Prints the current game board
  # The board should have the same dimensions each time
  # and you should use the "reputs" helper to print over
  # the previous board
 
  def print_board
    clear_screen!
    @players.each_with_index do |player, index|
      player.position = @length if player.position >= @length 
      reputs "#{'.' * length}| ".insert(player.position, player.avatar)  
    end
  end
end
 
# @board.each_with_index do |row, index|
    #   reputs row.insert(players[index].position, players[index].avatar) 
 
 
 
# players = {:ian => ":)", :thomas => ':('}
 
game = RubyRacer.new({:ian => ":)", :thomas => ':(', :alex => "%)", :christian => "^^"}, 100)
game.print_board
 
# # This clears the screen, so the fun can begin
# clear_screen!
 
until game.finished?
  game.players.each do |player|
    move_to_home!
    game.advance_player!(player)
    game.print_board
    sleep(0.2)
  end
end
 
  # game.winner
   
  # # # The game is over, so we need to print the "winning" board
  # # game.print_board(30)
   
puts "Player '#{game.winner}' has won!"