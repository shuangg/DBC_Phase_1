class CartesianProduct
  include Enumerable

  attr_accessor :first, :second
  def initialize(first_seq, second_seq)
    @first, @second = first_seq, second_seq
  end

  def each(&block)
    @first.product(@second).each do |i|
      yield i
    end
  end
end
