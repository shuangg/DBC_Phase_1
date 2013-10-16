# BEGIN by checking to see if your number is greater than or equal to 0 and less than 20
#   IF it is less than 20 and greater than zero find the exact number
#   IF the number is greater than or equal to 20 and evenly divisible by 10 find the exact number
#   ELSE recall the method but destruct the number into it's tens place and the ones place and repeat steps 1 - 3
# 
# 
# 
 
## 1 - 100
 
def in_word(num)
  if num >= 0 && num < 20
    %w(zero one two three four five six seven eight nine ten eleven twelve
       thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[num]
  elsif num % 10 == 0
    %w(zero ten twenty thirty fourty fifty sixty seventy eighty ninety one-hundred)[num/10]
  else
    "#{in_word num / 10 * 10}-#{in_word num % 10}".downcase
  end.capitalize
end
 
in_word 20 # => "Twenty"
in_word 89 # => "Eighty-nine"
in_word 45 # => "Fourty-five"
in_word 100 # => "One-hundred"
in_word 23 # => "Twenty-three"
in_word 1 # => "One"
in_word 10 # => "Ten"
in_word 34 # => "Thirty-four"
in_word 56 # => "Fifty-six"
in_word 0 # => "Zero"
 
### 1 - 1000
 
 
def in_words(num)
  number_words = {
                    0 => "Zero", 1 => "One", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 
                    9 => "Nine", 10 => "Ten", 11 => "Eleven", 12 => "Twelve", 13 => "Thirteen", 14 => "Fourteen", 15 => "Fifteen", 16 => "Sixteen",
                    17 => "Seventeen", 18 => "Eighteen", 19 => "Nineteen", 20 => "Twenty", 30 => "Thirty", 40 => "Fourty", 50 => "Fifty", 60 => "Sixty",
                    70 => "Seventy", 80 => "Eighty", 90 => "Ninety", 100 => "One hundred", 200 => "Two hundred", 300 => "Three hundred", 400 => "Four hundred",
                    500 => "Five hundred", 600 => "Six hundred", 700 => "Seven hundred", 800 => "Eight hundred", 900 => "Nine hundred", 1000 => "One thousand"
                  }
  if num >= 0 && num < 20
    number_words[num]
  elsif num % 10 == 0 && num <= 100                  
    number_words[num]
  else
    if num < 100
      "#{number_words[num / 10 * 10]}-#{number_words[num % 10]}"
    elsif num % 10 == 0
      "#{number_words[num / 100 * 100]} #{number_words[num % 100]}"
    else 
      "#{number_words[num / 100 * 100]} #{number_words[num % 100 / 10 * 10]}-#{number_words[num % 10]}"
    end
  end.capitalize
end
 
 
 
p in_words 45 # => "Fourty-Five"
p in_words 456 # => "Four hundred Fifty-Six"
p in_words 60  # => "Sixty"
p in_words 450 # => "Four hundred Fifty"
p in_words 980 # => "Nine hundred Eighty"
p in_words 20 # => "Twenty"
p in_words 100 # => "One hundred"
 
# >> "Fourty-Five"
# >> "Four hundred Fifty-Six"
# >> "Sixty"
# >> "Four hundred Fifty"
# >> "Nine hundred Eighty"
# >> "Twenty"
# >> "One hundred