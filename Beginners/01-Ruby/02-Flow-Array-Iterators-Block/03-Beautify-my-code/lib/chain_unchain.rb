def shuffle_word(a_word)
  #TODO: refactor this method
  a_word.upcase.chars.to_a.shuffle
  #cap_word = a_word.upcase
  #chars_enum = cap_word.chars
  #array = chars_enum.to_a
  #shuffle_array = array.shuffle


end


def quote_prime_numbers(n)
  #TODO: refactor this method

  prime = (1..n).select do |i|
    dividers = (2..i-1).select {|k| i % k == 0 }
    dividers.empty?
  end

  prime.map{ |prime_num| "#{prime_num} is prime"}
end

p quote_prime_numbers(30)

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  def print_name
    puts @name
  end
  def grow
    @age += 1
  end
  def get_ill
    @status = "ill"
  end
end

boris = Person.new("boris", 12)
p boris
boris.grow
p boris
boris.get_ill
p boris

