class Person
	attr_accessor :name, :age, :birthday

	def initialize(name, age)
		@name     = name
		@age      = age
	end
end


thomas = Person.new 'Thomas', 23

thomas.name # => "Thomas"

thomas.name = "Tom"
thomas.name # => "Tom"

thomas.birthday = 5
thomas.birthday # => 5

thomas.age # => 23




 # a method suming any number of arguements and returning true if the sum == 21
 def twenty_one?(*cards) # !> previous definition of twenty_one? was here
 	21 == cards.inject(:+)
 end

 # need to look into ':+' 
 # or

 def twenty_one?(*cards) # !> previous definition of twenty_one? was here
 	cards.sum == 21
 end

 # or

 def twenty_one?(*cards) # !> method redefined; discarding old twenty_one?
 	cards.inject(:+) == 21
 end

# if a number is divisible by 3, return "Fizz". If a number is divisible by 5, return "Buzz"
# if a number is divisible by both return "FizzBuzz"
def fizzbuzz(x)
 [("Fizz" if (x%3).zero?), ("Buzz" if (x%5).zero?)].compact.join
 # This creates an array and the different elements only get set into the array if the boolean is truthy.
 # if the first part is only true, then only that gets joined to nothing. If they are both true then they get combined together
 # with the join method. I imagine the compact! method is only a precaution incase something messes up. 
 # I think this becuase #zero? only will only evaluate to true or false. If it evals to false, nothing is entered into the array
 # only if it evals to true does "Fizz" or "Buzz" or both become entered into the array. This is a clever move, I need to get up 
 # on this level! PRONTO!
end


# my solution

def sum_over_50(arr)
	arr.reject { |num| num <= 50}.inject(0, :+)
	# 'reject' returns an array where the block is not 'true' just think of 'delete_if' delete if num <= 50
	# inject has an initial value of 0 and I pass the addition symbol (:+) so it adds all of the elements up and returns the result
end


# removing unwanted items from array and returning items that you want
# &[:b, :q]
# my solution

[:r, :u, :b, :e, :q, :u, :e].select { |sym| sym == :b || sym == :q } # => [:b, :q]

# other answer was this... 
# '&'in this instance is the set-intersection operator, which means the result is a collection of the common elements in both Arrays
# that is why you have to pass the second part as an array.
[:r, :u, :b, :e, :q, :u, :e] &[:b, :q] # => [:b, :q]