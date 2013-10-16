def separate_comma(number)
  num = number.to_s
  num.reverse!
  num.gsub!(/(\d{3})(?=\d)/, '\1,\2')
  num.reverse!
end


separate_comma 100000000 # => "100,000,000"


def separate_comma(number)
  numb_str = number.to_s
  count = -4
  until count.abs > numb_str.size
    numb_str.insert(count, ",")
    count -= 4
  end

  numb_str
end

st = Time.new
separate_comma 100000000000 # => "100,000,000,000"
et = Time.new - st
puts et 
# >> 0.000131