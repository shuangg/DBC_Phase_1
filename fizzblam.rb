def fizzblam
  1.upto 1000 do |num|
    if num % 35 == 0 # or num % 7 == 0 && num % 5 == 0
      puts "FizzBlam"
    elsif num % 7 == 0
      puts "Blam"
    elsif num % 5 == 0
      puts "Fizz"
    else
      puts num
    end    
  end
end

fizzblam