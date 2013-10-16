def small_num_to_english(n)
  # n needs to be < 1000
  if n % 100 == 0
    ["zero", "one hundred", "two hundred", "three hundred", "four hundred", 
      "five hundred", "six hundred", "seven hundred", "eight hundred", "nine hundred"][n/100]
  elsif n >= 0 && n <= 19
    %w(zero one two three four five six seven eight nine ten eleven 
       twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
  elsif n % 10 == 0 && n < 100
    %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety hundred)[n/10]
  else
    if n % 100 % 10 == 0
      "#{small_num_to_english n/100*100} #{small_num_to_english n%100/10*10}"
    elsif n < 100
      "#{small_num_to_english n%100/10*10} #{small_num_to_english n%100%10}"
    else
      "#{small_num_to_english n/100*100} #{small_num_to_english n%100/10*10}-#{small_num_to_english n%100%10}"
    end
  end.capitalize
end
 
 
 
small_num_to_english 57  # => "Fifty seven"
small_num_to_english 239 # => "Two hundred thirty-nine"
small_num_to_english 348 # => "Three hundred forty-eight"
small_num_to_english 999 # => "Nine hundred ninety-nine"
small_num_to_english 527 # => "Five hundred twenty-seven"
small_num_to_english 420 # => "Four hundred twenty"
small_num_to_english 320 # => "Three hundred twenty"
small_num_to_english 310 # => "Three hundred ten"
small_num_to_english 210 # => "Two hundred ten"