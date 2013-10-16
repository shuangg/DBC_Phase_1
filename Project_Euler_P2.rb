def fibonacci
  last, curr = 1, 2
  sum = 0
  while curr <= 4000000
    sum += curr if curr.even?
    last, curr = curr, curr + last
  end

  sum
end



fibonacci # => 4613732