a = [ "The", "Cat", "N", "the", "hat"]
a.permutation(2).to_a # => [["The", "Cat"], ["The", "N"], ["The", "the"], ["The", "hat"], ["Cat", "The"], ["Cat", "N"], ["Cat", "the"], ["Cat", "hat"], ["N", "The"], ["N", "Cat"], ["N", "the"], ["N", "hat"], ["the", "The"], ["the", "Cat"], ["the", "N"], ["the", "hat"], ["hat", "The"], ["hat", "Cat"], ["hat", "N"], ["hat", "the"]]

b = [ 1, 2, 3, 4, 5 ]
b.push(6,7,8) # => [1, 2, 3, 4, 5, 6, 7, 8]

b.select {|num| num % 2 ==0 } # => [2, 4, 6, 8]
 




def sum_upto(n)
	return 1 if n == 1
	sum_upto(n-1) + n
end    

def reverse_append( ary, n )
	return ary if n < 0
	reverse_append(ary, n-1)
	ary << n
end



reverse_append [], 11 # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]


def append( ary, n )
	return ary if n < 0
	ary << n
	append( ary, n-1)
end


append [], 4 # => [4, 3, 2, 1, 0]



def fib(n)
	return 0 if n == 0
	return 1 if n == 1
	fib(n-1) + fib(n-2) 
end


fib 12 # => 144



15.divmod(4) # => [3, 3]


5.99.to_i # => 5



def ten_twenty(n)
	return 10 if n.even?
	return 20 if n.odd?
end



def add_more_ruby(string)
	string.downcase.gsub("sad", "happy")
end


add_more_ruby "Why am I always so sad?" # => "why am i always so happy?"

add_more_ruby "Sad sad sad sad Sad Sad" # => "happy happy happy happy happy happy"








# ~> ...                               ^