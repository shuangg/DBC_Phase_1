# compute([[4, 8], [15, 16]])

def compute(ary)
  return nil unless ary
  ary.map {|(a,b)| !b.nil? ? a + b : a }
end


compute [[4, 8], [15, 16]] # => [12, 31]



# returns nil if array passed in is nil
# destructures the array element passed in ( to the two variables a & b ) because you only want two values
# if variable b is not nil, then add both the variable values together and return that array
# if b is nil, just return the variable 'a' because there is nothing to add to it
