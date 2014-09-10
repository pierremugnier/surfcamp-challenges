require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  ('A'..'Z').to_a.shuffle.take(grid_size)
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
  def translate(attempt)
    # return nil si le mot n'existe pas
    # return la traduction s'il existe
    raw_json = open("http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}").read
    response = JSON.parse(raw_json)
    if response.keys.include? "Error"
      return nil
    else
      return response
    end
  end

  def is_in_grid?(attempt, grid)
    # return true or false whether the attempt is in the grid or not
    attempt.split('').all? { |letter| grid.include? letter }
  end


  if translate(attempt) == nil
    result = {
    message: "Ce mot n'existe pas en anglais !",
    translation: "Il n'y a pas de traduction car le mot n'existe pas",
    time: end_time - start_time,
    score: 0
    }
  elsif translate(attempt) != nil && is_in_grid?(attempt, grid) == true
    trad = translate(attempt)["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
    result = {
    message: "well done!",
    translation: trad,
    time: end_time - start_time,
    score:  attempt.size
    }
  else
    trad = translate(attempt)["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
    result = {
    message: "Votre score est de 0 car il est impossible de composer ce mot avec les lettres proposées",
    translation: trad,
    time: end_time - start_time,
    score:  0
  }
  end
  return result
end

