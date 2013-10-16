# Part A: Create a class Dessert with getters and setters for name and calories. 
# Define instance methods healthy?, which returns true if a dessert has less than 200 calories, and delicious? which returns true for all desserts.

# Part B: Create a class JellyBean that extends Dessert, and add a getter and setter for flavor. 
# Modify delicious? to return false if the flavor is "black licorice" (but delicious? should still return true for all other flavors and for all non-JellyBean desserts).

# initialize with options hash.... 

class Dessert
  def initialize(args) # name, calories
    @name     = args[:name]
    @calories = args[:calories]
  end

  attr_accessor :name, :calories

  def healthy?
    calories < 200  
  end

  def delicious?
    true  
  end
end


class JellyBean < Dessert 

  def initialize(args) # name, calories, flavor
    @name     = args[:name]
    @calories = args[:calories]
    @flavor   = args[:flavor]
  end
  attr_accessor :flavor 
  
  def delicious?
    flavor == 'black licorice' ? false : super
  end
end

# an example of poetry mode :)

after_dinner = Dessert.new :name => 'Flan', :calories => 199 


after_dinner.healthy?  # => true
after_dinner.delicious? # => true
after_dinner.calories = 250
after_dinner.healthy? # => false