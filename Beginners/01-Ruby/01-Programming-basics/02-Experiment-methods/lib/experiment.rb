# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Fixnum, and Array classes !

def get_rid_of_surrounding_whitespaces(a_string)
  a_string.strip
end

def belongs_to?(a_string, a_word)
  return a_string.include?(a_word)
end
puts belongs_to?("nous sommes au surfcamp", "nous")
puts belongs_to?("nous sommes au surfcamp", "vous")

def replace(initial_string, old_letter, new_letter)
  return initial_string.gsub(old_letter,new_letter)
end
puts replace("hello meteo","e","o")
puts replace("hello meteo","o","e")

def exactly_divide(an_integer, a_divider)
  return an_integer.fdiv(a_divider)
end

def is_divisible_by_two(an_integer)
 return an_integer.even?
end

def random_subset(an_array, sample_size)
  return an_array.sample(sample_size)
end

def randomize(an_array)
  return an_array.shuffle
end
p randomize([8,9,4,17])


def ascending_order(an_array)
  an_array.sort
end