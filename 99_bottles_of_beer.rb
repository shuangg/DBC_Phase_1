# Takes as its input an integer +n+ representing the starting number of bottles
# Prints out the lyrics to "n Bottles of Beer" to the console.
 
class BeerSong
 
  attr_accessor :beers # getter and setter
 
  def initialize(beers)
    beers = 0 if beers < 0
    beers = 99 if beers > 99
    self.beers = beers      # or @beers = beers
  end
 
  def print_song
    beers.downto 1 do |i|  # starting wherever, downto 1
      print_stanza i
    end
  end
 
  def print_stanza(n)
    if n.zero?
      String.new # or "" 
    else
      puts "#{translate n} #{bottles n} of beer on the wall,"     ,
           "#{translate n} #{bottles n} of beer,"                 ,
           "Take one down pass it around"                         ,
           "#{translate n-1} #{bottles n-1} of beer on the wall."    
    end
  end
 
 
  def bottles(n)
    n == 1 ? 'bottle' : 'bottles' # if n == 1 it's singular otherwise plural
  end
 
 
  def translate(n)
    if n >= 0 && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thrity fourty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase   # recursive call 
    end.capitalize                                        # first part gets rid of the remainder ex. 74 / 10 == 7 * 10 == 70
  end                                                     # second part gets the remainder 74 % 10 == 4
end                                                       # then both of the created arrays are indexed and interpolated, downcased and then at the end capitalized.
 
new_song = BeerSong.new(23)
new_song.print_song # => 23
# >> Twenty-three bottles of beer on the wall,
# >> Twenty-three bottles of beer,
# >> Take one down pass it around
# >> Twenty-two bottles of beer on the wall.
# >> Twenty-two bottles of beer on the wall,
# >> Twenty-two bottles of beer,
# >> Take one down pass it around
# >> Twenty-one bottles of beer on the wall.
# >> Twenty-one bottles of beer on the wall,
# >> Twenty-one bottles of beer,
# >> Take one down pass it around
# >> Twenty bottles of beer on the wall.
# >> Twenty bottles of beer on the wall,
# >> Twenty bottles of beer,
# >> Take one down pass it around
# >> Nineteen bottles of beer on the wall.
# >> Nineteen bottles of beer on the wall,
# >> Nineteen bottles of beer,
# >> Take one down pass it around
# >> Eighteen bottles of beer on the wall.
# >> Eighteen bottles of beer on the wall,
# >> Eighteen bottles of beer,
# >> Take one down pass it around
# >> Seventeen bottles of beer on the wall.
# >> Seventeen bottles of beer on the wall,
# >> Seventeen bottles of beer,
# >> Take one down pass it around
# >> Sixteen bottles of beer on the wall.
# >> Sixteen bottles of beer on the wall,
# >> Sixteen bottles of beer,
# >> Take one down pass it around
# >> Fifteen bottles of beer on the wall.
# >> Fifteen bottles of beer on the wall,
# >> Fifteen bottles of beer,
# >> Take one down pass it around
# >> Fourteen bottles of beer on the wall.
# >> Fourteen bottles of beer on the wall,
# >> Fourteen bottles of beer,
# >> Take one down pass it around
# >> Thirteen bottles of beer on the wall.
# >> Thirteen bottles of beer on the wall,
# >> Thirteen bottles of beer,
# >> Take one down pass it around
# >> Twelve bottles of beer on the wall.
# >> Twelve bottles of beer on the wall,
# >> Twelve bottles of beer,
# >> Take one down pass it around
# >> Eleven bottles of beer on the wall.
# >> Eleven bottles of beer on the wall,
# >> Eleven bottles of beer,
# >> Take one down pass it around
# >> Ten bottles of beer on the wall.
# >> Ten bottles of beer on the wall,
# >> Ten bottles of beer,
# >> Take one down pass it around
# >> Nine bottles of beer on the wall.
# >> Nine bottles of beer on the wall,
# >> Nine bottles of beer,
# >> Take one down pass it around
# >> Eight bottles of beer on the wall.
# >> Eight bottles of beer on the wall,
# >> Eight bottles of beer,
# >> Take one down pass it around
# >> Seven bottles of beer on the wall.
# >> Seven bottles of beer on the wall,
# >> Seven bottles of beer,
# >> Take one down pass it around
# >> Six bottles of beer on the wall.
# >> Six bottles of beer on the wall,
# >> Six bottles of beer,
# >> Take one down pass it around
# >> Five bottles of beer on the wall.
# >> Five bottles of beer on the wall,
# >> Five bottles of beer,
# >> Take one down pass it around
# >> Four bottles of beer on the wall.
# >> Four bottles of beer on the wall,
# >> Four bottles of beer,
# >> Take one down pass it around
# >> Three bottles of beer on the wall.
# >> Three bottles of beer on the wall,
# >> Three bottles of beer,
# >> Take one down pass it around
# >> Two bottles of beer on the wall.
# >> Two bottles of beer on the wall,
# >> Two bottles of beer,
# >> Take one down pass it around
# >> One bottle of beer on the wall.
# >> One bottle of beer on the wall,
# >> One bottle of beer,
# >> Take one down pass it around
# >> Zero bottles of beer on the wall.