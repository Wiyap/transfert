print "Entrer ton année de naissance :"

annee_naissance = gets.chomp.to_i

counter = Time.new.year
while counter >= annee_naissance
  	puts annee_naissance
  	annee_naissance += 1
end