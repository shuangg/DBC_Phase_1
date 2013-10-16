# Solution for Challenge: P2: Enumerables. Started 2013-08-12T02:37:37+00:00
# Array#map => iterates over a collection passing the elements into a given block and handing back a modified copy of the collection based on the manipulating code in the block.
# Array#inject => iterates over a collection running a given block and returning the accumulated result of running the code block for every element in the collection
# Array#select => iterates over a collection returning a copy of the initial collection that meet some required result within the given code block
# Array#reject => iterates over a collection returning a copy of the initial collection that did not return true to the given block, similar to delete_if (except delete_if permantently modifies the collection) 
# 
# 
 
##--modifying the implicit block passed into a proc and calling it --##
 
class Array
  def my_map(&block)        
    modified_collection = []
    self.each do |element|
      modified_collection << block.call(element)
    end
    
    modified_collection
  end
  
  def my_select(&block)
    modified_collection = []
    self.each do |element|
      modified_collection << element if block.call(element).eql?(true)    
    end
 
    modified_collection
  end
end
 
 
 
new_ary = Array.new([1,2,3,4,5,6])
 
new_ary.my_map {|element| element * element } # => [1, 4, 9, 16, 25, 36]
 
new_ary.my_select {|element| element % 2 == 0 } # => [2, 4, 6]
 
 
##-- leaving the implicilty passed block as a lambda and yielding elements into it --##
 
class Array
  def my_map        
    modified_collection = []
    self.each do |element|
      modified_collection << yield(element)
    end
    
    modified_collection
  end
 
  def my_select
    modified_collection = []
    self.each do |element|
      modified_collection << element if yield(element).eql?(true)
    end
 
    modified_collection
  end
end
 
new_ary = Array.new([1,2,3,4,5,6])
 
new_ary.my_map {|element| element * element } # => [1, 4, 9, 16, 25, 36]
 
new_ary.my_select {|element| element % 2 == 0 } # => [2, 4, 6]