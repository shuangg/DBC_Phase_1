class Class
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s       # make sure it's a string
        attr_reader attr_name            # create the attribute's getter
        attr_reader attr_name+"_history" # create bar_history getter # !> instance variable @bar_history not initialized
    # class_eval takes a string and evaluates it in the context of the current class.. (class from which your calling)
    class_eval %Q{
        
         def #{attr_name}=(attr_name)
           @#{attr_name} = attr_name
           if @#{attr_name+"_history"}.nil?
             @#{attr_name+"_history"} = [nil]
           end
           @#{attr_name+"_history"} << attr_name
         end
      }
      # a setter with history ^^^
    end
end

class Foo
    attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
f.bar_history # => [nil, 1, 2]
