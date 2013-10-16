def combine_anagrams(words)
  words.group_by {|wrd| wrd.downcase.split(//).sort.join }.values
end


