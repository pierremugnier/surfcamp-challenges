
CALORIES = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170,
}


MENU = {
  "Happy Meal" => ["Cheese Burger", "French fries", "Coca"],
  "Best Of Big Mac" => ["Big Mac", "French fries", "Coca"],
  "Best Of Royal Cheese" => ["Royal Cheese", "Potatoes", "Sprite"]
}


def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  CALORIES[burger] + CALORIES[side] + CALORIES[beverage]
end


def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  sum = 0
  orders.each do |order|
    if MENU.keys.include? order
      sum += MENU[order].map {|meal| CALORIES[meal]}.reduce(:+)
    else
      sum += CALORIES[order]
    end
  end
  sum
end

puts calories_counter("Sprite", "Best Of Big Mac")


