def to_roman(num)
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
  }
  numeral_ary = []  
  numerals.keys.each do |n|        # iterate the keys in a collection
    while num >= n                 # while number (num) is greater than or equal to specific key value
      num = num - n                # subtract specific key value from num
      numeral_ary << numerals[n]   # append value referenced from key into numeral_ary
    end 
  end
 
  puts numeral_ary.join            # join the array with no spaces into a string
end
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
 