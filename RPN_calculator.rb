# refactored just a bit :)
class RPNCalculator

  def evaluate(string)
    numb_array = []
    comp_string = string.split # doing join or each_char because then 20 might become 2 and 0!
    comp_string.each do |char|
      if char =~ /\d/
        numb_array << char.to_i
      else
        sign = char.to_sym
        numb_array << numb_array.pop(2).inject(sign)  
      end
    end
    numb_array[0] 
  end
end



calc = RPNCalculator.new

calc.evaluate('20 10 5 4 + * -') # => -70

class RPNCalculator_1
  def evaluate(str)  
    ary = []
    str.split.each do |i|
      if i.match(/\d/) 
        ary << i.to_i 
      elsif i.match(/\-|\+|\*/)
        operator = i.to_sym
        ary << ary.pop(2).inject(operator)
      end
    end
    return ary[0]
  end
end


calc_1 = RPNCalculator_1.new

calc_1.evaluate('20 10 5 4 + * -') # => -70