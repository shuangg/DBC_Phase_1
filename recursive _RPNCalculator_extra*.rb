# Build a recursive RPN calculator without using iteration (each, map, inject, etc. not allowed). 
# Extra points if you manage to solve it with no other arguments besides the input string.


class RPNCalculator
  def evaluate(string, num_array)
    if string.length <= 0
      return num_array[0]
    end 
    expression_array = string.split # splits string at white spaces
    elem = expression_array.shift
    if elem =~ /\d/
      num_array << elem.to_i 
    else
      sign = elem.to_sym
      num_array << num_array.pop(2).inject(sign)
    end    
    
    evaluate expression_array.join(' '), num_array
  end
end

