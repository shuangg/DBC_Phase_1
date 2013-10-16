# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.
 
# You'll probably want to write other methods, but this 
# encapsulates the core Grandma logic
def deaf_grandma
  print "Hey sonny boy, How are you? "
  talking = true
  while talking
    input = gets.chomp
    if input == input.upcase
      puts "NO, NOT SINCE 1983!"
    elsif input == "I love ya, Grandma, but I've got to go."
      puts "Okay, talk to you later."
      talking = false
    else
      puts "HUH!? SPEAK UP, SONNY!"
    end
  end
end
# Run our method
deaf_grandma