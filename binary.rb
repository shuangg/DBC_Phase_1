# def binary_search(num, array)
#   mid = array[array.size / 2]
#   return -1 if array.size == 1
#   if array[mid == num
#     return mid
#   elsif mid > num
#     binary_search(num, array[0..array.size/2-1]) 
#   else
#     binary_search(num, array[array.size/2..-1])
#   end
# end

array = [13, 19,  24,  29,  32,  37,  43]


def binary_search(num, array)
  high = array.size - 1
  low  = 0
  mid  = array.size / 2
  until array[mid] > array[high]  
    if array[mid] == num
      return mid
    elsif array[mid] > num 
      high = mid + 1
      mid  = (array[low..high].size) / 2 
    elsif array[mid] < num
      low = mid-1
      mid = array[low..high].size
    end
  end

  return -1
end

binary_search 43, array # => 3