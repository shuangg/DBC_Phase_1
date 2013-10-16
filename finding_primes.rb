def prime_numbers
  primes = []
  2.upto 100 do |x|
    count = 0
    1.upto(100) { |i| count += 1 if x % i == 0}
    if count <= 2
      primes << x
    end
  end

  primes
end


prime_numbers # => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
