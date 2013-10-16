class Fraction

	attr_accessor :numerator, :denominator

	def initialize(numerator, denominator)
		self.numerator, self.denominator = numerator, denominator
	end

	def to_s
		"#{numerator}/#{denominator}"
	end

	def to_f
		numerator / denominator.to_f
	end

	def gcd(a,b)
		if b == 0 then a else gcd( b, a%b ) end
	end

	def lowest
		divisor = gcd numerator, denominator
		Fraction.new numerator/divisor, denominator/divisor
	end
end


f = Fraction.new 20, 60
f.numerator # => 20
f.denominator # => 60
f.to_s # => "20/60"
f.lowest.to_s # => "1/3"
f.to_f # => 0.3333333333333333
f.numerator = 50
f.denominator = 100
f.to_f # => 0.5