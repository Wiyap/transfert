dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

file = File.open('/home/ludovic/Desktop/THP/Semaine3/Jour2/projet/lib/format .txt')
file_data = file.read

def word_counter(strg,dico)
  hash_={}
  dico.each do |n|
    h = strg.scan(/(#{n})/).count
    hash_.store(n, h)
  end
  p hash_
end

word_counter(file_data,dictionnary)
