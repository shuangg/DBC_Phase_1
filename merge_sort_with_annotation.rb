# FIRST LEVEL
# array = [34, 23, 100]
merge_sort(array)
def merge_sort(array)
  $call_count += 1
  if array.count <= 1
    # an array of length one or less is always sorted
    return array
  end
  # Apply "Divide & Conquer" strategy
  # 1. Divide

  # array = [34, 23, 100]
  # so mid = 1
  mid = array.count / 2

  # array = [34, 23, 100]
  # array.slice(0, 1) => [34]
  # part_a = merge_sort([34]) = [34] # because count is 1
  part_a = merge_sort array.slice(0, mid) # must keep slicing the array down in size then organizing it?

  # array = [34, 23, 100]
  # array.slice(1, 2)
  # part_b = merge_sort([23, 100]) # because count is 1
  part_b = merge_sort array.slice(mid, array.count - mid)
  # part_b = [23, 100]

  # 2. Conquer
  result = []
  offset_a = 0
  offset_b = 0
  while offset_a < part_a.count && offset_b < part_b.count
    a = part_a[offset_a] #=> 34
    b = part_b[offset_b] #=> 23

    # Take the smallest of the two, and push it on our array
    if a <= b
      result << a
      offset_a += 1
    else
      result << b
      offset_b += 1
    end
    
  end
  # There is at least one element left in either part_a or part_b (not both)
  while offset_a < part_a.count
    result << part_a[offset_a]
    offset_a += 1
  end

  while offset_b < part_b.count
    result << part_b[offset_b]
    offset_b += 1
  end
  # result = [23, 34, 100]
  return result
end

merge_sort [34, 23, 100, 3, 43, 12, 20, 69]





$call_count = 0

# SECOND LEVEL
# array = [23, 100]
merge_sort(array)
def merge_sort(array)
  $call_count += 1
  if array.count <= 1
    # an array of length one or less is always sorted
    return array
  end
  # Apply "Divide & Conquer" strategy
  # 1. Divide

  # array = [23, 100]
  # so mid = 1
  mid = array.count / 2

  # array = [23, 100]
  # part_a = merge_sort([23]) # because count is 1
  part_a = merge_sort array.slice(0, mid) # must keep slicing the array down in size then organizing it?

  # array = [23, 100]
  # array.slice(1, 1)
  # part_b = merge_sort([100]) # because count is 1
  part_b = merge_sort array.slice(mid, array.count - mid)

  # 2. Conquer
  result = []
  offset_a = 0
  offset_b = 0
  while offset_a < part_a.count && offset_b < part_b.count
    a = part_a[offset_a] #=> 34
    b = part_b[offset_b] #=> 23

    # Take the smallest of the two, and push it on our array
    if a <= b
      result << a
      offset_a += 1
    else
      result << b
      offset_b += 1
    end
    
  end
  # There is at least one element left in either part_a or part_b (not both)
  while offset_a < part_a.count
    result << part_a[offset_a]
    offset_a += 1
  end

  while offset_b < part_b.count
    result << part_b[offset_b]
    offset_b += 1
  end
  # result = [23, 100]
  return result
end

merge_sort [34, 23, 100, 3, 43, 12, 20, 69]