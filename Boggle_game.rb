class Dice
 
  LETTERS = ('A'..'Z').to_a
 
  attr_reader :sides
 
  def initialize(sides = 26)
    @sides = sides
  end
 
  def roll
    LETTERS[rand(@sides)]
  end
end
 
 
class BoggleBoard
 
  attr_reader :board
 
  def initialize
    @die = Dice.new
    @board = [
               ['_', '_', '_', '_'],
               ['_', '_', '_', '_'],
               ['_', '_', '_', '_'],
               ['_', '_', '_', '_']
            ]
  end
 
 
 
  def shake!
    row, column = 0, 0
    while row < @board.length
      @board[row][column] = @die.roll
      if column == (@board[row].length - 1)
        column = 0
        row += 1
      else
        column += 1
      end
    end
  end
 
 
  def to_s
    @board[0].join + "\n" + @board[1].join + "\n" + @board[2].join + "\n" + @board[3].join
  end
end
 
 
boggle = BoggleBoard.new 
p boggle.board == [['_', '_', '_', '_'], ['_', '_', '_', '_'], ['_', '_', '_', '_'], ['_', '_', '_', '_'] ] 
p boggle.shake!
puts boggle.to_s
boggle.shake!
puts boggle.to_s
 
 
 
 
class SmartDice
 
 
  attr_reader :sides, :letters
 
  def initialize(letters)
    @letters       = letters
    @sides         = letters.count
  end
 
  def roll
    letters[rand(@sides)]
  end
end
 
 
class SmartBoggleBoard
 
  attr_reader :current_board
  
  def initialize
    @current_board = [
                       ['_', '_', '_', '_'],
                       ['_', '_', '_', '_'],
                       ['_', '_', '_', '_'],
                       ['_', '_', '_', '_']
                      ]
    @dice_array = [
                     SmartDice.new(%w(A A E E G N)), SmartDice.new(%w(E L R T T Y)), SmartDice.new(%w(A O O T T W)), SmartDice.new(%w(A B B J O O)),
                     SmartDice.new(%w(E H R T V W)), SmartDice.new(%w(C I M O T U)), SmartDice.new(%w(D I S T T Y)), SmartDice.new(%w(E I O S S T)),
                     SmartDice.new(%w(D E L R V Y)), SmartDice.new(%w(A C H O P S)), SmartDice.new(%w(H I M N Qu U)), SmartDice.new(%w(E E I N S U)),
                     SmartDice.new(%w(E E G H N W)), SmartDice.new(%w(A F F K P S)), SmartDice.new(%w(H L N N R Z)), SmartDice.new(%w(D E I L R X))
 
                  ]
  end
 
  def shake!
    @current_board = @dice_array.sample(@dice_array.count).map! {|die| die.roll }
  end
 
  def to_s
    @current_board = @current_board.each_slice(4).to_a
    @current_board[0].join('   ') + "\n" + @current_board[1].join('   ') + "\n" + @current_board[2].join('   ') + "\n" + @current_board[3].join('   ')
  end
end
 
 
boggle = SmartBoggleBoard.new
 
p boggle.shake!
p boggle.shake!
p boggle.shake!
puts boggle.to_s
