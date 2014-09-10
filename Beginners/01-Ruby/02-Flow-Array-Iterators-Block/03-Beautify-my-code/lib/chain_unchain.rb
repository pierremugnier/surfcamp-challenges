def shuffle_word(a_word)
  #TODO: refactor this method
  a_word.upcase.chars.to_a.shuffle

end


def quote_prime_numbers(n)
  #TODO: refactor this method

  prime = (1..n).find_all do |i|
    dividers = (2..i-1).select {|k| i % k == 0 }
    dividers.empty?
  end

  prime.map{ |prime_num| "#{prime_num} is prime"}
end


