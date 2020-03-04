$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

counter = 0
movie_grosses = 0

while counter < director_data[:movies].length do
  movie_grosses += director_data[:movies][counter][:worldwide_gross]

counter += 1
end
    movie_grosses

# pp(director_data)
end

# # Write a method that, given an NDS creates a new Hash
# # The return value should be like:
# #
# # { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
counter = 0
result = {}

  while counter < nds.length do
    director_name = nds[counter][:name]
     result[director_name] = gross_for_director(nds[counter])


  counter += 1
end

result

# pp(nds)
end



# while movie_index < nds.length[counter][:movies] do
#     result += nds[counter][:movies][movie_index][:worldwide_gross]
#     movie_index += 1
#
# end
