def grade(num_books, reads_books)
	if reads_books
		return "C" if num_books < 10
		return "B" if num_books <= 20
		return "A" if num_books > 20
	else
		return "D" if num_books < 10
		return "C" if num_books <= 20
		return "B" if num_books > 20
	end
end


#grade 4, false # => "D"
#grade 4, true # => "C"
#grade 15, true # => "B"


def odds_and_evens(string, return_odds)
	to_return = ""
	string.size.times do |index|
		if (return_odds && index.odd?) || (!return_odds && index.even?)
			# if return_odds is 'true' and index.odd? is 'true' indexes that value i.e string[1] and appends that to the empty to_return string
			# if return_odds is 'false' or !true and index.even? is 'true' indexes that value i.e string[0] and appends that to the empty to_return string
			to_return << string[index]
		end
	end
	to_return # returns the newly created string
end



odds_and_evens "abcedfg", true # => "bef"

# first this function creates an empty string
# then taking the size of the string it iterates through the string starting at 0..string.size (upto)
# if the first part of the || && is falsey it doesnt even evaluate the second part and moves to the right side of the ||
# if the first part of the && is !true or false and the indexed value 0..string.size is even?, it takes that index of the string and appends it to the empty string
# if no condition is met, nothing happens and the next iterator value is passed.


# ^^^^ This is due to Ruby's short-circuit evaluation. 
# with || the right operand is not evaluated if the left operand is truthy
# with && the right operand is not evaluated if the left operand is falsey








# given a string, return the character after every letter "r"

def pirates_say_arrrrr(string)
	to_return = "" # initialize an empty string
	add_next = false # initializes add_next to 'false'
	string.size.times do |index| # starts iterations at 0..string.size
		current_char = string[index] # finds the character in the string at index[0..string.size], sets it to current_char variable
		to_return << current_char if add_next # initially false because even if the first letter is an "r/R" you arent going to add it! but the next character... if the last character was an R the boolean is TRUE
		add_next = (current_char == 'r' || current_char == 'R') # if current character is 'R' or 'r' then the add_next variable changes to 'True'
	end # if last character was an "R" or 'r' it will automatically append the next character to 'to_return' then the variable add_next will change again depending on whether that currrent character is an "r" or an "R"
	to_return # returns newly formed string with characters that succeed any char == "R" or 'r'
end


pirates_say_arrrrr("Pirates say arrrrrrr") # => "arrrrrr"