def old_roman_num(num)
  roman_num = ''

  (num / 1000).times {roman_num << 'M' }
  (num % 1000 / 500).times {roman_num <<  'D' }
  (num % 500 / 100).times { roman_num << 'C' }
  (num % 100 / 50).times { roman_num << 'L' }
  (num % 50 / 10).times { roman_num <<  'X' }
  (num % 10 / 5).times { roman_num << 'V' }
  (num % 5 / 1).times { roman_num << 'I' }

  roman_num
end



old_roman_num 5693 # => "MMMMMDCLXXXXIII"