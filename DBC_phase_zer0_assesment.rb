## Exercise 1 ##

home_address = "1376 Cassins St."
home_city = "Carlsbad"
home_state = "CA"

## Exercise 2 ##

## If I had to explain this in the most basic, BASIC terms... which very well might confuse someone later on down the road... (tried explaining it to my mom)

# The first line of code reading right to left means that "Anne" is recognized as first_name. This is signified by 1 equal sign.
# The second line of code is a question signified by 2 equal signs. It asks if "Anne" is equal to first_name. A question will only ever be true or false.
# The third line of code is invalid. "Spalding" is on the wrong side of the equal sign. The order is incorrect. Though a person may be able to read it, a computer won't.
# The fourth line of code is another question signified by 2 equal signs. It asks if "Spalding" is equal to first_name.
# For comparison, it doesn't matter which side is which because it is merely asking if the two things are equal, while
# a single equal sign is used to designate something to something else so the way it's written is important. 

### My first attempt

# The first line of code is an assignment statement. It's assigning the string "Anne" to the variable first_name
# The second line is a comparison statement shown by the use of two '=='. It's comparing whether the variable first_name is equal to the string
# "Anne" in the form of a question. Since we just assigned "Anne" to the variable first_name in the line above it, this comparison statement will return true.
# Comparison statements only ever return true or false.
# The third line of code is an invalid statement and will raise a syntax error. This is because you can only assign
# an object (like a string called "Spalding") to a variable (first_name) if it's on the right side of the assignment operator (=). The code should be read right to left
# not left to right. Assignment must always be object on the right (ex. a string), variable on the left of the assignment operator (=). 
# The last line is another comparison statement. For comparison, it doesn't matter which place you put the variable/object etc.
# This line would evaluate to false because the variable first_name is assign to the string "Anne" and not the string "Spalding".


## Exercise 3 ##

# 1) The value stored at index 3 is 'best'
# 2) The index of the word 'ruby' is at place 0
# 3) The length of the array is 7

## Exercise 4 ##

# the last example you give, it should evaluate to 10 not -11, because -1 * 1 * -10 == -1 * -10 == 10

def product(array)
  total = 1
  array.each {|num| total *= num }
  total
end

product [1,2,3] # => 6
product [0,-1,-10] # => 0
product [1,-1,-10] # => 10
product [2,-4,-10] # => 80

## Exercise 5 ##

def product_odd(array)
  total = 1
  array.each do |num|
    if num.odd?
      total *= num
    end 
  end

  total
end

product_odd [1,2,3] # => 3
product_odd [0,-1,-10] # => -1
product_odd [1,2,3,4,5] # => 15
product_odd [2,5,13,4] # => 65

## Exercise 6 ##

def fizzblam
  1.upto 1000 do |num|
    if num % 35 == 0 # or num % 7 == 0 && num % 5 == 0
      puts "FizzBlam"
    elsif num % 7 == 0
      puts "Blam"
    elsif num % 5 == 0
      puts "Fizz"
    else
      puts num
    end   
  end
end


## Exercise 7 ##

# method_1 finds the largest integer in the list of integers by way of comparison. 
#
# method_2 creates a new list called 'results' containing all the positive integers greater than 0 from the last list
#
# method_3 creates a new list called 'results' containing all the even integers from the last list

#>>> refactored method_3

def method_3(array)
  results = []
  array.each { |num| results << num if num % 2 == 0 }
  results
end

# or

def method_3(array)
  array.select(&:even?)
end


## Exercise 8 ##

# Return is used to give back 1 or more values from a ruby method i.e ( a set of expressions ). 
# Return is not a ruby method.

def two_plus_two
  2 + 2
end

two_plus_two  # => 4
# this set of instructions (to add 2 + 2) will 'return' or give back its sum.

# Puts, short for 'put string', is a ruby method that prints (or displays) something on your screen.
# Since puts is a method, it returns (or gives back a value too). This value is nil.
# The difference between the two is that return gives you back something (from a ruby method), and doesn't print it. While puts prints something for you
# and returns nil (since it is a ruby method).

## Exercise 9 ##

# time: 20:38.19

#### strategy #####

# First sort the given list of numbers 1..10,000 in ascending order.
# Starting with a test number of 1, see if that number is in your list. If it is, add 1 to your test number and check to see if that number is 
# in your list. Keep doing this same process for all 10,000 numbers until the two values aren't equal (i.e a list number and your test number). 
# The newest test number is the number that is missing from your list of 10,000 numbers. 

def missing_num(array)
  sorted_array = array.sort
  number = 1
  sorted_array.each do |num|
    while number == num
      number += 1
    end
  end
  number
end


## Exercise 10 ##

# time: 08:05.31

# create a hash with a default value set to 0
# go through the list of items 
#   if item not in the list
#      initialize its value count to 1
#   if item is in the list
#      increment its value count
#   return the hash with the items as keys and their values representing the quantity of each item in the list.

def shopping_list(items)
  list = Hash.new(0)
  items.each { |itm| list[itm] += 1 }
  list
end



shopping_list ['eggs','eggs','steak','cheese','milk','yogurt','milk','chocolate milk'] # => {"eggs"=>2, "steak"=>1, "cheese"=>1, "milk"=>2, "yogurt"=>1, "chocolate milk"=>1}



## Exercise 11 ##

# time: 35:38.5

# As far as being able to turn the heater/air conditioner on/off I made it so you set that with true or false. (both initialized to false)
# This seemed like a logical way of doing it. I could have made on/off methods I guess, but I thought this to be more straight forward.
# If this is not quite what you were looking for, I'd be more than happy to redo it! I hope this doesn't count against me.

class House

  attr_accessor :current_temperature, :heater_on, :air_conditioner_on
  attr_reader :max_temp, :min_temp

  def initialize(current_temperature, max_temp, min_temp)
    @current_temperature = current_temperature
    @max_temp = max_temp
    @min_temp = min_temp  
    @heater_on = false
    @air_conditioner_on = false
  end

  def temperature_max
    if current_temperature >= max_temp
      self.heater_on = false
      self.air_conditioner_on = true
      puts "Your house is at or above its max temp of #{max_temp}. Heater: OFF, Air Conditioning: ON"
    end
  end

  def temperature_min
    if current_temperature <= min_temp
      self.heater_on = true
      self.air_conditioner_on = false
      puts "Your house is at or below its min temp of #{min_temp}. Heater: ON, Air Conditioning: OFF"
    end
  end

  def update_temperature!
    self.current_temperature += 1 if heater_on
    self.current_temperature -= 2 if air_conditioner_on
    unless heater_on || air_conditioner_on  
      puts "No house appliances are on!"
    end
    puts "House temp is #{current_temperature} degrees Fahrenheit"
    temperature_min
    temperature_max
  end
end 

thomas_new_house = House.new(65,72,60) # => #<House:0x007feffa034110 @current_temperature=65, @max_temp=72, @min_temp=60, @heater_on=false, @air_conditioner_on=false>
dbc_new_house = House.new(63,77,59) # => #<House:0x007feffa033148 @current_temperature=63, @max_temp=77, @min_temp=59, @heater_on=false, @air_conditioner_on=false>


## Exercise 12 ##


# http://jsfiddle.net/UVAKk/