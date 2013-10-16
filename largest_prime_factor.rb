# starting with 2 (the first prime) up to but not including n 
# because we already know a prime will be evenly divided by itself and 1
# if n is evenly divisible by any other number between 2 and n-1 then we know it's not prime.

def prime? n
  (2..(n-1)).each { |x| return false if n % x == 0 }
  true
end
 
def largest_prime(n) 
  a = []
  product_sum = 1
  x = 2 # 2 is the first prime number
   
  while product_sum < n && x < n       # x < n condition handles for small prime factors like with 4,8,9,27
    if n % x == 0 && prime?(x) 
      a << x
      product_sum *= x # it would take too long to increment 1 with such a big number. 
    end                # probably the case as to why the product sum needs to be a condition.
                       # rans puts x if x < n was only condition. It takes forever for numbers like 
    x += 1             # 600_851_475_143 but for small numbers i.e. probably up to 500_000_000 it'd be fine
  end

  a.last
end

100001