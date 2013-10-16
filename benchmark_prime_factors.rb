require 'benchmark'
 
 
class Integer
  def prime?
    2.upto(self-1) do |int|
      return false if self % int == 0
    end
 
    true
  end
end
 
 
# p 5.prime? == true
# p 4.prime? == false
# p 8.prime? == false
# p 9.prime? == false
# p 7.prime? == true
 
 
# this screams for refactoring...
 
def prime_factors_1(n)
  return [] if n == 1
  factors = []
  2.upto(n) do |x|
    if n % x == 0 && x.prime?
      factors += [x] + prime_factors_1(n/x)
      break
    end
  end
 
  factors
end
 
 
 
 
def prime_factors_2(n)
  return [] if n == 1
  factors = []
  count = 2
  while true
    if n % count == 0 && count.prime?
      factors += [count] + prime_factors_2(n/count)
      break
    end
 
    count += 1
  end
 
  factors
end
 
n = 675
Benchmark.bm do |x|
  x.report("prime_factor_1") do
    5000.times { prime_factors_1(n) }
  end 
  x.report("prime_factor_2") do 
    5000.times { prime_factors_2(n) }
  end
end