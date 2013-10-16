class Array

	def pad!(min_size, value=nil)
		return self.dup if self.size >= min_size
    until self.size == min_size
    	self << value
    end

    self
	end


	def pad(min_size, value=nil)
		new_array = self.dup
	  return new_array if self.size >= min_size
    until new_array.size == min_size
    	new_array << value
    end

    new_array
	end
end



first_array = Array.new([1,2,3])
second_array = Array.new([4,5,6])
second_array # => [4, 5, 6]
first_array # => [1, 2, 3]
first_array.pad!(5, 'apple') # => [1, 2, 3, "apple", "apple"]
first_array # => [1, 2, 3, "apple", "apple"]
second_array.pad(5) # => [4, 5, 6, nil, nil]
second_array # => [4, 5, 6]


# Another way to skin a cat :)

class Array
  def pad!(min_size, value = nil)
    until self.length >= min_size
      self << value
    end
    self
  end

  def pad(min_size, value = nil)
    new_arr = self.dup
    until new_arr.length >= min_size
      new_arr << value
    end
    new_arr
  end
end