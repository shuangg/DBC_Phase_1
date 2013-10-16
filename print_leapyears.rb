def print_leapyear(the_start, the_end)
  the_start.upto the_end do |x|
    puts x if (x % 4 == 0) && (x % 100 != 0) || (x % 400 == 0)
  end
end


print_leapyear(1990, 2020) # => 1990

# >> 1992
# >> 1996
# >> 2000
# >> 2004
# >> 2008
# >> 2012
# >> 2016
# >> 2020