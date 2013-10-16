class Die
  
  def initialize(labels)
		if labels.empty?
			raise ArgumentError.new
		else
		  @sides = labels
		end
  end

  def sides
  	@sides.size
  end
  
  def roll
	  @sides[rand(@sides.size)]
  end
end


die = Die.new(["A", "B", "C", "D", "E", "F",])

die.sides # => 6

die.roll # => "F"