# Solution for Challenge: Algorithm Drill: Linear Search. Started 2013-08-08T00:01:36+00:00
 
def linear_search(num, array)
  i = 0
  until array[i] == num
    if array[i] == nil
      return nil
    else
      i +=1
    end
  end
 
  return i
end
 
 
random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]
p linear_search(18, random_numbers) == 2
 
p linear_search(9, random_numbers) == nil
 
 
def global_linear_search(object, array)
  all_indexes = []
  i = 0
  until array[i] == nil
    if array[i] == object
      all_indexes << i
    end
    i += 1
  end
 
  all_indexes
end
 
bananas_arr = "bananas".split(//)
# => ["b", "a", "n", "a", "n", "a", "s"]
p global_linear_search("a", bananas_arr) == [1,3,5]