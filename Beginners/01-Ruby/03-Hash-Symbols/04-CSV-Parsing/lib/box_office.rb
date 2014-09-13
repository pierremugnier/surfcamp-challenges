# Encoding: utf-8
require 'csv'
require 'date'

#def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year

#end

def most_successfull(nth, year, file)
  filepath = File.dirname(__FILE__) + file
  csv_options = {col_sep:',',quote_char:'"', encoding: "ISO8859-1"}

  films = []
  date = CSV.foreach(filepath, csv_options) do |row|
    films << { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
  end


  films_before_year = films.select { |film| film[:year] < year }
  film_before_year_best_sales = films_before_year.sort_by { |film| - film[:earnings]}
  film_most_successfull = film_before_year_best_sales.take(nth)
end

p most_successfull(4, 1996, "/movies.csv")