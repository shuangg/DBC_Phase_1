# sum of all numbers multiples of 3 and 5 below 1000


def sum_of_three_or_five
  sum = []
  1.upto 999 do |i|
    if i % 5 == 0 || i % 3 == 0
      sum << i 
    end
  end
  sum.inject(:+)
end


sum_of_three_or_five # => 233168

def sum_multiples(ary, range)
  range.inject(0) do |sum, n|
    ary.any? { |i| n % i == 0 } ? sum + n : sum
  end
end

puts sum_multiples([3,5], 0..999)
# >> 233168
# >> 233168