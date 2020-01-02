$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  director_totals = {}
  i = 0
  while i < nds.length do
    x = 0
    director_name = nds[i][:name]
    director_totals[director_name] = 0
    while x < nds[i][:movies].length
      director_totals[director_name] += nds[i][:movies][x][:worldwide_gross]
      x += 1 
    end
   i += 1 
  end
  return director_totals
end
