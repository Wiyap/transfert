file = File.open('/home/ludovic/Desktop/THP/Semaine3/Jour2/projet/lib/format .txt')
file_data = file.read

gros_mots = File.open('/home/ludovic/Desktop/THP/Semaine3/Jour2/projet/lib/grosmots.txt')
gros_mots_data = gros_mots.read


gros_mots_data = gros_mots_data.split("\n")

def word_counter(strg,dico)
  hash_={}
  dico.each do |n|
    h = strg.scan(/(#{n})/).count
    hash_.store(n, h)
  end
  p hash_
end

word_counter(file_data,gros_mots_data)