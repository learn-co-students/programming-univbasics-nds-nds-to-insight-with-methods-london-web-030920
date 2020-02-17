$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
movies_index = 0 
total_gross = 0

while movies_index < director_data[:movies].length do
 
  total_gross += director_data[:movies][movies_index][:worldwide_gross]

movies_index+=1
end

total_gross

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
 
  
  i = 0 
  while i < nds.length do
  directors_name = nds[i][:name]
   result[directors_name] = 0
   director = nds[i]
 
 result[directors_name] = gross_for_director(director)
 
  i+=1
  
  
end

  result
  
end
