def reverse_words(str)
  split_string = str.split
  split_string.map { |wrd| wrd.reverse }.join(' ')  
end




reverse_words "Ich bin ein Berliner" # => "hcI nib nie renilreB"