

def good_guess?(x)
	x.equal?(42)
end

good_guess? 47 # => false


def get_grade(x)
  return "A" if x.between?(90, 100)
  return "B" if x.between?(80, 89)
  return "C" if x.between?(70, 79)
  return "D" if x.between?(60, 69)
  return "F" if x.between?(0, 59)
end

get_grade 90 # => "A"
get_grade 79 # => "C"
get_grade 70 # => "C"

def pet_grade(x)
	case x
	when 90..100
		return "A"
	when 80..89
		return "B"
	when 70..79
		return "C"
	when 60..69
		return "D"
	when 0..59
		return "F"
	end
end

pet_grade 90  # => "A"


def is_leapyear?(x)
	x % 4 == 0 && (x % 100 == 0 && x % 400 == 0)
end

is_leapyear? 1800 # => false



# first attempt......

def leap_year?(x)
  return true if x % 4 == 0 && x % 100 != 0
  if x % 4 == 0 && x % 100 == 0
    if x % 400 == 0
      return true
    else
      return false
    end
  else
    return false
  end
end  

# condenced...........


def year?(x)
	return true if x % 400 == 0
	x % 4 == 0 && x % 100 != 0 ? true : false
end

# a year can only be evenly divisible by 100 if it is also evenly divisible by 400, so if the first condition
# isn't met, it doesn't even matter if its divisible by 100 because its NOT evenly divisible by 400, so we dont need to check that
# the only other way it can be a leap year is if its evenly divisible by 4 and not evenly divisible by 100
# example....
# 1904 is not divisble by 400.... but it is divisible by 4 and NOT by 100, it is a leap year
# 1800 is not divisible by 400... it is divisible by 4 but it is also divisible by 100, which it's not allowed to be if its not ALSO divisible by 400
# 1900 is the same way. it is divisible by 4 and 100 but not by 400, so it can't be a leap year
# 2000 is divisible by 400 so it's a leap year, also, naturally, its also divisible by 4

year? 2100 # => false
year? 1904 # => true




class Array
  def pad!(min_size, value = nil)
    return self if self.size >= min_size
    self << value until self.size == min_size 

    self 
  end
  
  def pad(min_size, value = nil)
    return self.clone if self.size >= min_size
    ary_clone = self.clone # or dup
    ary_clone << value until ary_clone.size == min_size

    ary_clone
  end
end


new_array = Array.new([1,2,3])
new_array.pad(5) # => [1, 2, 3, nil, nil]
new_array # => [1, 2, 3]

second_array = Array.new([1,2,3])
second_array # => [1, 2, 3]
second_array.pad!(4) # => [1, 2, 3, nil]
second_array # => [1, 2, 3, nil]

new_array.pad(0).object_id # => 70151144218260
new_array.object_id # => 70151143782360

new_array.pad 10 # => [1, 2, 3, nil, nil, nil, nil, nil, nil, nil]




def enter_words
	puts "Enter words into the program to get them sorted"
	puts "Press 'enter' when you'd like the program to end"
	input = []
	words = gets.chomp
	while words != ""
		input << words
		puts "Enter another word!"
		words = gets.chomp
	end	
	input.sort.each do |wrd|
		puts wrd
	end
end



def welcome(address) 
	address.match("CA") ? "Welcome to California" : "You should move to California"
end




welcome "a string with CA in it" # => "Welcome to California"











def time_tables(row)
	row.times do |num|
		print num
	end
end

time_tables 2 # => 2


def super_fizzbuzz(array)
	array.map  do |num|
		if num % 15 == 0
			num = "FizzBuzz"
		elsif num % 5 == 0
			num = "Buzz"
		elsif num % 3 == 0
			num = "Fizz"
		else
			num = num	
		end
	end		
end





super_fizzbuzz [1, 2, 5] # => 





def factorial(n)
	return 1 if n == 0
	n * factorial(n-1)
end

factorial 3 # => 


def shortest_string(array)
	array.max { |a,b| a.size <=> b.size }
end

shortest_string ['cat', 'zzzzzzz', 'apple'] # => 



# require 'benchmark'

# Benchmark.bm do |bm|
# 	bm. report('longest') do
# 		def longest_string(array)
# 			max = array[0]
# 			array.each { |str| max = str if str.length > max.length }
# 			max 
# 		end
# 	end	
# end


def count_between(array, lower_bound, upper_bound)
	count = 0
	array.each do |i|
		count += 1 if i.between?(lower_bound, upper_bound)
	end

	count 
end	


count_between [10, 20, 30], 10, 30 # => 

# if the number of numbers is even, take the average of the middle two

ary = [3, 5, 7, 12, 13, 14, 21, 23, 23, 23, 23, 29, 39, 40, 56]

def median(array) 
	sorted_ary = array.sort
	size = sorted_ary.size
	if sorted_ary.size.even?
		return (sorted_ary[size / 2] + sorted_ary[(size / 2) - 1]) / 2.0
	else
		return sorted_ary[size / 2]
	end
end


median [4, 4, 5, 5, 6, 6, 6, 7] # => 



# def largest_integer(array)
# 	max = array[0]
# 	array.each { |num| max = num if num > max }
# 	max
# >> 01



def smallest_integer(array)
	return nil if array.empty?
	array.min { |x, y| x <=> y }
end

smallest_integer [100, 30, 20] # => 20






def mode(array)
	array.each { |i| Array.new(2, [i, array.count(i)]) }
end
mode [1, 2, 3, 3] # => [1, 2, 3, 3]

# unsolved mystery right hurrrrrr ^^^^^^


def array_mode(array)
	freq_hash = array.inject(Hash.new(0)) { |a,b| a[b] += 1; a}
	freq_hash.select {|a,b| b == freq_hash.values.max }.keys
end

array_mode [4,4,5,5,6,6,6,7,5] # => [5, 6]


def mode_array(array)
	count = Hash.new(0)
	array.each { |a| count[a] += 1 }
	count.keep_if { |a, b| b == count.values.max }.keys # keys returns an array of the keys. Returns keys of highest values.
	# keep-if deletes every key-value pair from hash where the block evaluates to false
end

mode_array [4,4,5,5,6,6,6,7,5] # => [5, 6]




class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
  	@width * @height
  end

  def perimeter
  	@width * 2 + @height * 2
  end

  def diagonal
  	(@width ** 2 + @height ** 2) ** 0.5
  end

  def square?
  	@width == @height
  end
end



first_rec = Rectangle.new(1, 6)
second_rec = Rectangle.new(6,5)
first_rec == second_rec # => false





def reverse_words(str)
	reversed_words = []
	split_string = str.split
	split_string.each {|i| reversed_words << i.reverse }
	reversed_words.join(' ')
end




reverse_words "The cat and the hat" # => "ehT tac dna eht tah"


def reverse_words_1(str)
	reversed_words = []
	str.split.each { |i| reversed_words << i.reverse }
	reversed_words.join(' ')
end

reverse_words_1 "Protect Ya Nectarine" # => "tcetorP aY eniratceN"






class GuessingGame

  def initialize(guess)
  	@guess = guess
  	@solved = false
  end

	def guess(guess)
		if guess > @guess
			@solved = false
			return :high
		elsif guess == @guess 
			@solved = true
			return :correct
		elsif guess < @guess
			@solved = false 
			return :low
		end
	end	

	def solved?
		@solved 
	end	  
end



	
game_1 = GuessingGame.new(10)
game_1.solved? # => false
game_1.guess(5) # => :low
game_1.guess(10) # => :correct
game_1.solved? # => true
game_1.guess(5) # => :low
game_1.solved? # => false





def separate_comma(number)
  num_str = number.to_s
  count = -4
  while count.abs <= num_str.length # it would be better to use 'until' because then you could use until count.abs > num_str.length
    num_str.insert(count, ',')			# so then it would evaluate even if its equal to the length because the condition would still be true
    count -= 4
  end
  
  num_str
end




# better answer

def separate_comma_one(number)
	num_str = number.to_s
	count = -4
	until count.abs > num_str.length # or size:::::::: evaluates until count.abs is GREATER than, so it will still run if it is equal to.
		num_str.insert(count, ',')
		count -= 4
	end

	num_str
end



separate_comma 1000000 # => "1,000,000"

separate_comma_one 100000 # => "100,000"



"1000000".length # => 7



class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Entered in an empty array")
    end  
    @labels = labels
  end
  
  def sides
    @labels.length
  end
  
  def roll
    @labels[rand(@labels.length)]
  end
end



# def is_fibonacci?(y)
# 	a = 0
# 	b = 1
# 	y.times do |x|
# 		c = a + b
# 		puts c
# 		a,b=b,c
# 	end
# end



def is_fibonacci?(number) 
	a = 0
	b = 1
	return true if number == 0
	while true
		c = a + b
		return true if c == number
		return false if c > number
		a,b=b,c
	end
end


is_fibonacci? 0 # => true

# def evaluate(str)	
# 	ary = []
# 	str.split.each do |i|
# 		if i.match(/\d/) 
# 			ary << i.to_i 
# 		elsif i.match(/\-|\+|\*/)
# 			operator = i.to_sym
# 			ary << ary.pop(2).inject(operator)
# 		end
# 	end
# 	return ary.join.to_i
# end


# evaluate '1 2 + 3 4 + *' # => 21


class RPNCalculator
  def evaluate(str)  # instance method creation 
	  ary = [] # creates a new array
	  return str.to_i if str.size == 1 # return integer if there are no other values
	  str.split.each do |i| # splits array at spaces and iterates over passing each to block
		  if i.match(/\d/) # if element matches a decimal digit character
			  ary << i.to_i  # append (integer) to the end the array initialized uptop
		  elsif i.match(/\-|\+|\*/) # if element matches a "-", "+", or "*" 
			  operator = i.to_sym # turns the operand into a symbol
		  	ary << ary.pop(2).inject(operator) # pops off the last two element in array and evaluates- 
		  end 												# expression with inject and the symbol
	  end     			# around here is where you could raise an error if there aren't enough numbers when an operand pops up
	  return ary[0] # returns final value from array as an integer
  end
end

calc = RPNCalculator.new

calc.evaluate('70 10 4 + 5 * -') # => 0



class CreditCard

  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new("Expecting card number to be 16 digits") 
    else 
      @number = number.to_s.split(//).map { |x| x.to_i }
    end
  end

  def check_card
    -1.downto(-16) do |x|
      @number[x] *= 2 if x.abs.even?
    end
    @number.join.split(//).map { |i| i.to_i }.inject(:+) % 10 == 0 ? true : false
  end
end


new_card = CreditCard.new(4408041234567892)

new_card.check_card # => false



def grab_all_ssns(string)
	ssn_numbs = string.scan(/\d{3}.?\d{2}.?\d{4}/)
	if ssn_numbs.empty?
		return string
	else
		ssn_numbs.map { |num| num.gsub(/(\d{3}).?(\d{2}).?(\d{4})/, '\1-\2-\3' ) }.join(', ')
	end
end


grab_all_ssns "234601422, 350.80.0744, 013-60-8762" # => "234-60-1422, 350-80-0744, 013-60-8762"



"350.80.0744".gsub(/(\d{3}).?(\d{2}).?(\d{4})/, '\1-\2-\3') # => "350-80-0744"


["234601422", "350.80.0744", "013-60-8762"].map { |i| i.gsub(/(\d{3}).?(\d{2}).?(\d{4})/, '\1-\2-\3') } # => ["234-60-1422", "350-80-0744", "013-60-8762"]




def grab_all_ssn(string)
	string.scan(/\d{3}.?\d{2}.?\d{4}/)
end


grab_all_ssns "234601422, 350.80.0744, 013-60-8762"  # => "234-60-1422, 350-80-0744, 013-60-8762"

# Determine whether a string contains a Social Security number.
def has_ssn?(string)
	string =~ /\d{3}\-\d{2}\-\d{4}/
end

# Return the Social Security number from a string.
def grab_ssn(string)
	ssn_match = /\d{3}\-\d{2}\-\d{4}/.match(string)
	ssn_match ? ssn_match[0] : nil
end

# Return all of the Social Security numbers from a string.
def grab_all_ssns(string)
	if ssn_numbs = string.scan(/\d{3}\-\d{2}\-\d{4}/)
		ssn_numbs
	else
		nil
	end
end

# Obfuscate all of the Social Security numbers in a string. Example: XXX-XX-4430.
def hide_all_ssns(string)
	string.gsub(/\d{3}\-\d{2}\-/, 'XXX-XX-')
end

# Ensure all of the Social Security numbers use dashes for delimiters.
# Example: 480.01.4430 and 480014430 would both be 480-01-4430.
def format_ssns(string)		
end


grab_ssn  "please don't share this: 234-60-1422" # => "234-60-1422"

grab_all_ssns "234601422, 350.80.0744, 013-60-8762" # => ["013-60-8762"]
# grab_all_ssns "234-60-1422, 350-80-0744, 013-60-8762" # => ["234-60-1422", "350-80-0744", "013-60-8762"]


hide_all_ssns 'please confirm your identity: XXX-XX-1422' # => "please confirm your identity: XXX-XX-1422"

format_ssns "234601422, 350.80.0744, 013-60-8762" # => nil
# ~> -:42: syntax error, unexpected $end, expecting keyword_end
