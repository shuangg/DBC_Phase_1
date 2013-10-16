def median(array)
  sorted = array.sort
  length = sorted.length
  return (sorted[(length - 1) / 2] + sorted[length / 2]) / 2.0
end



median [1, 34, 25, 55, 600, 23, 45, 67, 56, 1, 21] # => 34.0


[1, 34, 25, 55, 600, 23, 45, 67, 56, 1, 21].sort # => [1, 1, 21, 23, 25, 34, 45, 55, 56, 67, 600]