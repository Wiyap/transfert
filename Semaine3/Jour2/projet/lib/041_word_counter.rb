dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter(strg,dico)
  hash_={}
  dico.each do |n|
    h = strg.scan(/(#{n})/).count
    hash_.store(n, h)
  end
  return hash_
end

word_counter("Howdy partner, sit down! How's it going?",dictionnary)

