# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


# Even though the numbers would always be bigger (increasing), due to the multiplication, the second constraint (whether it was a palindrome or not)
# was making it OUT of order. SO the last number that was a palindrome was not necessarily the biggest....
# I WOULD think however, that they would be 
# its just the fluctuation of how the numbers are multiplied that makes them out of order. because it goes 100 * 100..999 then 101..999 then 102..999
# so it goes high, then drops, then high, then drops.... I guess.


class Fixnum  # dont do this....

  def palindrome?
    num_str = self.to_s
    num_str == num_str.reverse
  end

end


# us this way instead....

# def palindrome?(n)
#   num_str = n.to_s
#   num_str == num_str.reverse
# end


def largest_palindrome

  # outputs a hash with the two multiples and their palindrome product. IN ORDER :)


  palindrome = {}
  # palindromes = [] #s #sort#last
  100.upto(999) do |i|
    100.upto(999) do |x|
      num = i * x
      if num.palindrome?
        palindrome[num] = "#{i} X #{x}"
      end
    end
  end
  palindrome.sort {|a, b| a <=> b}                       
end


# tester function...

def largest_palindrome
  palindromes = []
  100.upto(999) do |i|
    100.upto(999) do |x|
      palindromes << i * x
    end
  end
  palindromes
end






