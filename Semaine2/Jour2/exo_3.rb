puts "Donne ton année de naissance"
user_birthyear = gets.chomp.to_i
user_age_2017 = 2017 - user_birthyear
puts "Tu avais #{user_age_2017} ans en 2017."
