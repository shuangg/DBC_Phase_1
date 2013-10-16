
def mode(array)
  count = Hash.new(0) # specify default object to 0, because you can't += 1 to nil.
  array.each { |elem| count[elem] += 1 }
  count.keep_if { | key, val | val == count.values.max }.keys
end


