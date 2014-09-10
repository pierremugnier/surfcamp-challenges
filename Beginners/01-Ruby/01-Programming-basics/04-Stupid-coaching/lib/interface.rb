require_relative "coach_answer"


message = ""

#tant que le message n'est pas "j'en ai marre"
until message == "j'en ai marre"

  puts "entrez votre message"
  message = gets.chomp
  if message[message.size-1] == "?"
    puts "question pourrie"
  elsif message == "j'en ai marre"
    puts "salut"

  else
    puts "ça m'interesse pas"
  end
end




