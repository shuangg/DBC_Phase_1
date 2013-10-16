

def old_roman_numberal(num)
  roman = ''
  # or you could use the shovel (<<) for this...
  # how many thousands
  roman += 'M' * (num / 1000) 
  # how many five hundreds
  roman += 'D' * (num % 1000 / 500)
  # how many hundreds
  roman += 'C' * (num % 500 / 100)
  # how many fifties
  roman += 'L' * (num % 100 / 50)
  # how many tens
  roman += 'X' * (num % 100 / 10)
  # how many fives
  roman += 'V' * (num % 10 / 5)
  # how many ones
  roman += 'I' * (num % 5 / 1)
  roman 
end


old_roman_numberal 2346 # => "MMCCCXXXXVI"
