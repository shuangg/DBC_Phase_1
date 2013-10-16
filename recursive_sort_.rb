def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end
  
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |wrd|
    if wrd < smallest
      still_unsorted.push smallest
      smallest = wrd
    else
      still_unsorted.push wrd
    end
  end

  sorted.push smallest

  rec_sort still_unsorted, sorted
end  


rec_sort ["android", "dev", "bootcamp", "sweatshirt", "laura", "watch", "pants", "thomas", "nick", "ali"], [] # => ["ali", "android", "bootcamp", "dev", "laura", "nick", "pants", "sweatshirt", "thomas", "watch"]



