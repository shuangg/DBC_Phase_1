# create a method called random_select that takes an array and n and returns n random numbers
# from that array into a new array

def random_select(array, n)
	results = []
	n.times do
		results << array[rand(array.length)]
	end
	results
end


	# rand() returns a number greater than or equal to zero and less than the parameter passed
	# if no parameter is passed, it returns a float between 0.0 and 1.0
	# you can also pass rand() a range like rand(1..6) if you wanted to get a random number 1..6 including 6 and 1
	# conversly, you can just as easily call sample() to return a random element or sample(n) for n random elements from an array
	# the elements with sample() are chosen using uniqure and random indices of the array to ensure than an element doesnt repeat itself unless that array cotains duplicates.
	# in this method definition, we create an empty array

	# next we run a block (n times ) and everytime we generate a random number that is less than
	# the length of the array. But this is fine, because then we index the random number in the array.
	# since array.length returns the actual number of elements, which will be one more than if we index them
	# you will never not select a number
	# EXAMPLE::
	# a = [1, 2, 3, 4, 5, 6]
	# a.length # => 6
	# a[6] # => nil
	# a[5] # => 6 because you start indexes at 0 instead of one. 

###########################################################################################################################

#Given a sentence, return true if the sentence is a palindrom.

#Ignore whitespace and cases of characters.

#EXAMPLE "Never odd or even"

def palindrome(sentence)
	downcase_stripped_sentence = sentence.downcase.gsub(" ", "")
	downcase_stripped_sentence == downcase_stripped_sentence.reverse
end

# gsub() means global substitution, so in this instance we're globally substituting all of the whitespace in the sentence for no whitespace
# before doing that though, we have chained, downcase() into the mix to make the whole sentence lowercase
# we then check to see if the sentence with the whitespace stripped and letters made lowercase is equal to itself reversed. If it's a palindrome then it will be



# Given a range, add up the cube of all the numbers so (1..3) should return 36

def some_of_cubes(a, b)
	(a..b).inject { |result, element| result + element ** 3 }
end

# inject() can start off with a number that will be the first number plugged in for the first 'result' or
# or to skip an iteration, if you're starting at 1 you can not pass an argument and the first number in the range
# will be the first value of result. 
# each time through the block, result will have a value, and element will take on the first part of the array or range in this case (can be denoted with any word, but easiest to see this way)
# after one time through the array, the new result starting value for the next iteration will be the result of 
# whatever equation happened the last time the block ran.
# EXAMPLE:::
if we do (1..3).inject {|result, element| result + element ** 3}
	# the first iteration, result will take on the value 1 ( which would be 1 anyway, 1 ** 3 == 1)
	# and element would take on the second value 2 ( evaluating 2 ** 3) then we would add that to 1 and 'result'
	# the next time around would be 2 ** 3 + 1 or 9.... then it would be 9 + (the next element) 3 ** 3 returning 36
	# you can also pass an argument like inject(0), but then you would have more iterations because result would take on
	# 0 initially instead of 1 so it would be 0 + 1 ** 3 which is unnecessary. 
	# if you dont pass an arguement to inject, it just take the first value in the range or array and uses that as the first result to add to the first element.
	# so if you're not starting with 1 you will need to use inject(0) in order to return the desired results...
	# because if you use the first element in the array or range as the initial result value, you wont be doing any computation on it like you would be
	# doing for the rest of the array or range. ex. (3..5).inject {|result, element| result + element ** 3}
											# first result value would be 3 ( not 3 ** 3 ) which it would be if you started of with inject(0)
											# because with inject(0) it would be 0 + 3 ** 3 for first result then to be added to the next element ** 3 for next iteration.


# Given an Array, return the elements that are present exactly ONCE in the array.
# should return an array with unique values

def non_duplicated_values(values)
	values.find_all { |i| values.count(i) == 1 }
end


# find_all() returns an array containing all elements of enum for which the block is NOT false. ( true )
# count with an argument counts all of the times count(i) i appears in the array.
# so we find and return all of the values in the array where the count in the array is exactly equal to one
# in this case, 'i' takes on all of the elements in the array and then counts them within the array.
# if the count of the given element in the array is exactly '1' it saves it and returns it in another array
# once all of the elements in the array have been iterated through and checked.

# Given an array, return true if all the elements are Fixnums.

# given [1,2,3] the method should return true

def array_of_fixnums?(array)
	array.all? { |i| i.is_a?(Fixnum) }
end

# all?() passes each element of the collection to the given block. The method returns true if the block
# never returns false or nil. If not given a block, Ruby adds an implicit block of {|obj| obj } and all?
# will return true only if none of the collection memembers are false or nil.
# is_a? returns true if class is the class of the obj, or if class is one of the superclasses of obj
# EXAMPLE::
# is_a?(Fixnum) will return true if the reciever of this method is a Fixnum




# ENOUGH CONTRAST???

class Color
	attr_reader :r, :g, :b
	def initialize(r, g, b)
		@r = r
		@g = g
		@b = b
	end
	# function calculates brightness index of a color created as an instance of the Color class
	# initialized with certain values in numbers for (R,G,B)
	def brightness_index
		(299 * r + 587 * g + 114 * b) / 1000
	end
  #   
	def brightness_difference(another_color)
		(brightness_index - another_color.brightness_index).abs
	end

	def hue_difference(another_color)
		(r-another_color.r).abs +
		(g-another_color.g).abs +
		(b-another_color.b).abs
	end

	def enough_contrast?(another_color)
		brightness_difference(another_color) > 125 &&
		hue_difference(another_color) > 500
	end
end


#########################################################################


# Time to run code:::: 
# 
# you are given some code in the form of lambdas
# Measure and return the time taken to execute that code

# you may use Time.now to get the current time


def execut_proc(proc)
	begin_time = Time.now # gets time at start with Time.now and sets it to begin_time variable
	proc.call             # calls the proc
	Time.now - begin_time # gets Time.now again (after proc executes) and subtracts the initial start time from it and returns that.
end



