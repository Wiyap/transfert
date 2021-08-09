print "Quelle est votre année de naissance?"
annee_naissance = gets.chomp.to_i
current_year = Time.new.year
age = current_year - annee_naissance;
year_2017 = 2017
ageDifference_2017 =current_year - year_2017
old_age2017 = age - ageDifference_2017

puts "Votre age en 2017 est #{old_age2017}"; 