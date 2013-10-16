def number_shuffle(number) # !> previous definition of number_shuffle was here
  permutation_str = number.to_s.split(//).permutation.to_a
  permutation_str.map do |ary|
    ary.join.to_i
  end
end


number_shuffle 123 # => [123, 132, 213, 231, 312, 321]


def number_shuffle(number) # !> method redefined; discarding old number_shuffle
  no_of_combinations = number.to_s.size == 3 ? 6 : 24
  digits = number.to_s.split(//)
  combinations = []
  combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combinations
  combinations.uniq.sort
end

def cost(*orders)
  total = 0
  orders.each do |order|
    order.each_pair do |item, amt|
      total += @menu[item] * amt
    end
  end
  total
end


# or 
class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] } # order amount * menu price
    end
  end
end




cost({:rice => 1, :noodles => 1},{:rice => 2, :noodles => 2}) # => [{:rice=>1, :noodles=>1}, {:rice=>2, :noodles=>2}]
# ~> ...                               ^
# >> rice & 1
# >> noodles & 1
# >> rice & 2
# >> noodles & 2