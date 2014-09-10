def enter_info(para)
  puts "entrez votre #{para}"
  return gets.chomp
end


first_name = enter_info("prénom")
second_name = enter_info("second prénom")
last_name = enter_info("nom de famille")

puts "bienvenue à #{first_name.capitalize} #{second_name} #{last_name.upcase}"
