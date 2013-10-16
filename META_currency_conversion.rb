class Numeric
 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.00} 
 def method_missing(method_id)
   singular_currency = method_id.to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency)
     self * @@currencies[singular_currency]
   else
     super
   end
 end

 def self.add_currency(name, conversion)
   @@currencies[name.to_s] = conversion
 end

 def in(currency)
   singular_currency = currency.to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency)
     (self / @@currencies[singular_currency])
   else
     super
   end
 end
end


2.rupee.in(:dollar) # => 0.038

# class String

#  def palindrome?
#    altered_string = self.gsub(/\W*/, '').downcase 
#    altered_string == altered_string.reverse
#  end
# end


# module Enumerable 
  
#   def palindrome?
#     self.class != Hash ? self.to_a == self.to_a.reverse : false
#   end
# end