def binary_search(num, array, min=0, max=array.length-1)
  if  max < min
    return -1
  else
    mid = (min + max) / 2 # index value
    if array[mid] > num
      return binary_search(num, array, min, mid-1)
    elsif array[mid] < num
      return binary_search(num, array, mid+1, max)
    else
      return mid
    end
  end
end
 
 
 
# test_array = [13, 19,  24,  29,  32,  37,  43]
test_array = (100..200).to_a
 
binary_search 140, test_array # => 40