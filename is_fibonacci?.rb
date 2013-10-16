def is_fibonacci?(i)
  last, cur = 0, 1 # last = 0, cur = 1
  while cur < i
    last, cur = cur, last + cur # 1 becomes last, cur becomes 0 + 1 etc...
  end

  i == cur
end


is_fibonacci? 8670007398507948658051921 # => true
is_fibonacci? 927372692193078999171 # => false