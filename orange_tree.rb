class NoOrangesError < StandardError
end
 
class OrangeTree
 
  attr_reader :oranges
  attr_accessor :height, :age
 
  def initialize
    @height  = 0
    @age     = 0
    @oranges = []
  end 
 
  def growing_oranges
    grow_amount = age * rand(4) + 1
    grow_amount.times { @oranges << Orange.new}
  end
  
  def grow
    @height += 1 + rand(2) # grows tree in feet
    if @height >= 4 # if tree is able to produce fruit
      growing_oranges # produce fruit
    end
  end
 
  # Ages the tree one year
  def age!
    @age += 1
    grow
  end
 
  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @oranges.length > 0 ? true : false
  end
 
  def dead?
    @age >= 10 ? true : false
  end
 
  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    @oranges.shift
  end
end
 
class Orange
  attr_reader :diameter
 
  def initialize
    @diameter = (rand + rand(2) + 1)
  end
end
 
 
 
 
tree = OrangeTree.new
 
tree.age! until tree.any_oranges?
 
puts "Tree is #{tree.age} years old and #{tree.height} feet tall"
 
until tree.dead?
  basket = []
 
  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end
 
  avg_diameter = (basket.inject(0) {|sum, orange| sum + orange.diameter } / basket.size).round(2)
 
  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""
 
  # Age the tree another year
  tree.age!
end
 
puts "Alas, the tree, she is dead!"