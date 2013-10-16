["bananas", [1,2,3], ["apple", "cheese", [100, 20]], [true], [4.0, 7, 32]]
["Washed Out", "Nujabes",[34,[54,67,87],67],["Pliney","Lagunitas"],[false],[23,1990,5]]


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
