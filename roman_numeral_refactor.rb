def roman_numberal(num)
  numerals = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    400  => 'CD',
    100  => 'C',
    90   => 'XC',
    50   => 'L',
    40   => 'XL',
    10   => 'X',
    9    => 'IX',
    5    => 'V',
    4    => 'IV',
    1    => 'I'
  } # initialize a hash of keys as numbers 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 with their corresponding 
    # roman numeral
  numeral_ary = []                 # initialize an empty roman numeral array 
  numerals.keys.each do |n|        # iterate the keys in a collection
    while num >= n                 # while number (num) is greater than or equal to specific key
      num -= n                     # subtract specific key from num and reassign it to the variable num
      numeral_ary << numerals[n]   # append value referenced from key into numeral_ary
    end                            # repeat this process until there is nothing left of the number                      
            
  end
 
  puts numeral_ary.join            # join the array with no spaces into a string
end
 
 
roman_numberal(1) 
roman_numberal(3) 
roman_numberal(6) 
roman_numberal(3456) # => nil
# >> I
# >> III
# >> VI
# >> MMMCDLVI