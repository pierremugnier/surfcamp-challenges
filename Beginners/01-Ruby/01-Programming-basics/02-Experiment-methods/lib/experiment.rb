# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Fixnum, and Array classes !

def get_rid_of_surrounding_whitespaces(a_string)
  a_string.delete(" ")
end

def belongs_to?(a_string, a_word)
  a_string.include? a_word
end

def replace(initial_string, old_letter, new_letter)
  initial_string.gsub(old_letter, new_letter)
end

def exactly_divide(an_integer, a_divider)
  an_integer/a_divider
end

def is_divisible_by_two(an_integer)
  an_integer % 2 == 0
end

def random_subset(an_array, sample_size)
  an_array.shuffle.sample(sample_size)
end

def randomize(an_array)
  an_array.shuffle
end

def ascending_order(an_array)
  # TODO: return a copy of an_array with elements in ascending order
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
  an_array.sort
end