class CreditCard

  attr_reader :number

  def initialize(number)
    number_str = number.to_s
    if number_str.size != 16
      raise ArgumentError.new("Expecting card number to be 16 digits") 
    else 
      @number = number_str.split(//).map(&:to_i)
    end
  end

  def sum_digits
    number.join.split(//).map(&:to_i).inject(:+)
  end

  def check_card
    -1.downto(-16) do |x|  
      number[x] *= 2 if x.abs.even?
    end
    sum_digits % 10 == 0 ? true : false
  end
end


card = CreditCard.new(4408041234567893)
card.check_card # => true