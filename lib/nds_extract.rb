$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
i = 0 
total = 0
while i < director_data[:movies].length
total += director_data[:movies][i][:worldwide_gross]
i += 1 
end
return total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0 
  while row_index < nds.length do 
    column_index = 0 
    total = 0 
    while column_index < nds[row_index][:movies].length do 
      total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1 
    end 
    a = nds[row_index][:name]
    result[a] = total
    row_index += 1
  end 
  return result
end
