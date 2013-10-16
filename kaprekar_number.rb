def kaprekar?(k)
  num_sqr_str = (k ** 2).to_s
  mid = num_sqr_str.length / 2
  num_sqr_str[0,mid].to_i + num_sqr_str[mid..-1].to_i == k
end


kaprekar? 4950 # => true


def kaprekar?(k) # 297
  no_of_digits = k.to_s.size # initial numbers length 3
  square = (k ** 2).to_s # square to a string
  "88209"
  second_half = square[-no_of_digits..-1] "209" [-3..-1] 
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2] "88" [0..3-2]
  
  k == first_half.to_i + second_half.to_i  # add them together and truthey or falsey
end

kaprekar? 4950 # => true