def def_grandma
  bye_count = 0
  prompt =  "?>"
  print prompt
  granny_talk = gets.chomp
  while bye_count < 3 
    unless granny_talk == granny_talk.upcase
      puts "Huh?! SPEAK UP, SONNY!"
      print prompt
      granny_talk = gets.chomp
      granny_talk == 'BYE' ? bye_count += 1 : bye_count = 0
    else
      puts "NO, NOT SINCE #{1930 + rand(20)}"
      print prompt
      granny_talk = gets.chomp
      granny_talk == 'BYE' ? bye_count += 1 : bye_count = 0
    end
  end

  puts "Grandma Died..."
end

def_grandma