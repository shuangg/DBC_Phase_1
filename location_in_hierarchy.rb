
# In this problem, the location_in_hierarchy method takes two parameters: object and method. 
# You've to find the very first superclass of the object (starting with BasicObject) that defines method.
### The Breakdown ###
# You can't go from a literal form like "str" and get it's superclass. You first need to find its class ex. String
# Then set that to the variable klass (which will be updated)
# Put the class into the ancestors collection of the specific object.
# While the superclass of the object is not nil (which it will be once you call .superclass on BasicObject) add the superclass to the ancestors collection and
# update the klass variable with the newest superclass so that it's superclass can be found until nil.
# Then take the ancestors collection and reverse it, (starting with BasicObject) and work your way down the 
# ancestory until the certain method is found (using find) in the highest superclass ( before it is potentially overridden) 
# find returns the first value where the block returns true and not false. So starting at BasicObject.downto(the objects class given)



def location_in_hierarchy(object, method)
  klass = object.class
  ancestors = [klass]
  while !(superclass = klass.superclass).nil? 
    ancestors << superclass
    klass = superclass
  end
  ancestors.reverse.find do |ancestor| 
    ancestor.instance_methods.include?(method)
  end
end

location_in_hierarchy 1, :between? # => Numeric
location_in_hierarchy lambda {}, :call # => Proc
