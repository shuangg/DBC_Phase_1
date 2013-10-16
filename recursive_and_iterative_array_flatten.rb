# recursive but with Array#each
 
def flatten(array)
  return [array] unless array.is_a?(Array) 
  result = []
  array.each do |x|
    result += flatten(x)
  end 
  
  result
end
 
flatten ["bananas", [1,2,3], ["apple", "cheese", [100, 20]], [true], [4.0, 7, 32]] # => ["bananas", 1, 2, 3, "apple", "cheese", 100, 20, true, 4.0, 7, 32]
flatten ["Washed Out", "Nujabes",[34,[54,67,87],67],["Pliney","Lagunitas"],[false],[23,1990,5]] # => ["Washed Out", "Nujabes", 34, 54, 67, 87, 67, "Pliney", "Lagunitas", false, 23, 1990, 5]
 
 
 
# 1. No iteration inside the method (inject, each, map, etc. not allowed)
# 2. No other arguments besides the input array
 
 
def flatten_recur(array)
  return array if array == []
  return [array] unless array.is_a?(Array) 
  flatten_recur(array.shift) + flatten_recur(array) 
end
 
 
flatten_recur ["Washed Out", "Nujabes",[34,[54,67,87],67],["Pliney","Lagunitas"],[false],[23,1990,5]]  # => ["Washed Out", "Nujabes", 34, 54, 67, 87, 67, "Pliney", "Lagunitas", false, 23, 1990, 5]
flatten_recur ["bananas", [1,2,3], ["apple", "cheese", [100, 20]], [true], [4.0, 7, 32]] # => ["bananas", 1, 2, 3, "apple", "cheese", 100, 20, true, 4.0, 7, 32]