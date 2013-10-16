# input: ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] 
# output: [ ["cars", "racs", "scar"],
#           ["four"],
#           ["for"],
#           ["potatoes"],
#           ["creams", "scream"] ]

def create_key(wrd)
  wrd.downcase.split(//).sort.join  
end


def combine_anagrams(words)
  anagrams = Hash.new([])
  words.each do |wrd|
    key = create_key wrd
    anagrams[key] += [wrd]
  end
  
  anagrams.values
end



def combine_anagrams_two(words)
  words.group_by { |wrd| wrd.downcase.split(//).sort.join }.values 
end

combine_anagrams_two ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] # => [["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]]




# try to think about this one a little more, come back to it....

st = Time.new
combine_anagrams ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] # => [["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]]
et = Time.new

puts "Your function took #{et -st}"  # !> even though it seems like unary operator

# >> Your function took 0.000153
# >> Your function took 0.000155