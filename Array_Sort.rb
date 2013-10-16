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