$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

movie_index = 0
individual_gross = 0

  while movie_index < director_data[:movies].length do

      individual_gross += director_data[:movies][movie_index][:worldwide_gross]

      movie_index += 1
    end
  individual_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0

  while director_index < nds.length
    director_name = nds[director_index][:name]
    movie_index = 0

    result[director_name] =  gross_for_director(nds[director_index])

    director_index += 1
end
  result
end
