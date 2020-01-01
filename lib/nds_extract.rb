$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  row_index = 0
  while row_index < nds.length do 
    current_gross = 0 
    current_director = nds[row_index]
    director_name = current_director[0]
    current_movies = current_director[director_name]
    column_index = 0 
    while column_index < current_movies.length do 
      puts current_movies[column_index]
      column_index += 1 
    end
    row_index += 1 
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  result
end
