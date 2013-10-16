def palindrome?(string)
  altered_string = string.gsub(/\W*/, '').downcase
  altered_string == altered_string.reverse
end
 # /\W/ gsubs any non word character for nothing.

def count_words(string)
  count = Hash.new(0)
  words = string.scan(/\w+/).map(&:downcase)
  words.each { |wrd| count[wrd] += 1 }
  count
end 

class String

 def palindrome?
   altered_string = self.gsub(/\W*/, '').downcase 
   altered_string == altered_string.reverse
 end
end


"racear".palindrome? # => false