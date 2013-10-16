

# zero width positive look-ahead. (?=)
# globally looks for every match of three digits
# (?=) makes sure that 1 (in example) is not matched as part of those 3 digits, but that it it's there.
# gsub matches every three digits, not including the non back referenced digit (1 in this case) and puts a comma after it and before the non matched digit
# for smaller cases like 1, 10, 100 there is only three digits total, not three digits and a non back referenced digit
# you want to match every three digits, but you want to exclude the first digit if there are four etc


def separate_commas(string)
  string.reverse.gsub(/(\d{3})(?=\d)/, '\1,').reverse
end

# it goes "1000". reverse => "0001".gsub(/(\d{3})(?=\d)/, '\1,') => "000,1".reverse => "1,000"

separate_commas "1000000" # => "1,000,000"