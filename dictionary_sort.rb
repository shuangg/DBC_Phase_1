def sort_words_recursive(unsorted_array, sorted_array)  # also a dictionary sort :)
  if unsorted_array.empty?
    return sorted_array.map(&:capitalize)
  end
  new_sort = sorted_array
  still_unsorted = []
  downcase_unsorted_array = unsorted_array.map(&:downcase)
  smallest = downcase_unsorted_array.shift
  

  downcase_unsorted_array.each  do |wrd|
    if wrd < smallest
      still_unsorted << smallest 
      smallest = wrd
    else
      still_unsorted << wrd
    end
  end
  new_sort << smallest
  
  sort_words_recursive still_unsorted, new_sort
end

sort_words_recursive ["catfish","Bicycle", "anaconda", "Cod"], [] # => ["Anaconda", "Bicycle", "Catfish", "Cod"]

["the", "Cat", "In"].map(&:downcase).sort # => ["cat", "in", "the"]

## The break down ##
=begin
Initialize an empty array to be the sorted array
Initialize an empty array to be the still_unsorted array
Take the first element of the array and assign it to the variable smallest
Take the unsorted array and iterate over it ( or ask if you can look at the collection )
If a word in the collectin is smaller than the initial 'smallest' word, move the former smallest word 
into the still_unsorted array and reassign the smaller word to be the new smallest word. 
At the end of the iteration, you now have the smallest word out of the unsorted words. 
Append that into your empty sorted_words collection.
Then recursively call the function again, except with the newly made still_unsorted list 
and the newly ( single word, so far ) sorted array. 
When the function gets called again, the sorted array with then be assigned to the new_sort variable
this is instead of an empty array, because we want to add more sorted words to the sorted collection.
shift off another word and sort it.

=end

