def reverse_map(*nums, &block)
  nums.reverse.map(&block)
end

reverse_map(1,2,3) {|i| i * 2 } # => [6, 4, 2]


def word_count sentence
  # count = Hash.new(0)
  words = sentence.split.map(&:downcase)
  count = words.inject(Hash.new(0)) { |hash, wrd| hash[wrd] += 1; hash}
  count
end


word_count "The dog and the cat" # => {"the"=>2, "dog"=>1, "and"=>1, "cat"=>1}



def first_pos sentence
  position = Hash.new(0)
  words = sentence.split
  words.each { |wrd| position[wrd] = words.index(wrd) }
  position
end

first_pos "The dog and the cat and the cow" # => {"The"=>0, "dog"=>1, "and"=>2, "the"=>3, "cat"=>4, "cow"=>7}
