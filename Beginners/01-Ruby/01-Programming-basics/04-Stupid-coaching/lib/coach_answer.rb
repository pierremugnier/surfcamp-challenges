def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.include? "?"
    return "Silly question, get dressed and go to work !"
  else
    return "I don't care son, get dressed and go to work !"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
  puts "Question : #{your_message}"
  return gets.chomp.shuffle
end

