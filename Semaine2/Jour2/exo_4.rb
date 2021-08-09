puts "Donne ton année de naissance"
user_birthyear = gets.chomp
user_100 = user_birthyear.to_i + 100
puts "Tu auras 100 ans en #{user_100.to_s} !"