$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do 
    current_gross = 0 
    current_row = nds[row_index]
    director_name = current_row[:name]
    current_movies = current_row[:movies]
    column_index = 0 
    while column_index < current_movies.length do 
      current_gross += current_movies[column_index][:worldwide_gross]
      column_index += 1 
    end
    if result[director_name] == nil 
      result[director_name] = current_gross
    else 
      result[director_name] += current_gross
    end
    row_index += 1 
  end
  result
end
