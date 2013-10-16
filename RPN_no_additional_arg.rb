

# not even close to being finished.... maybe merge sort technique?
# keep trying, you'll eventually get it :)


class RPNCalculator
  def evaluate(string)
    return string.to_i if string.split.size <= 1
    
    expr_ary = string.split
    mid = string.size / 2
    element = evaluate expr_ary.slice(0,mid)
    
    num_array = []
    if element =~ /\d/
      num_array += [elem.to_i] 
    else
      sign = element.to_sym
      num_array += [num_array.pop(2).inject(sign)]
    end    
    
    # return num_array

    # evaluate expression_array.join(' ')
  end
end
