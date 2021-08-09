puts "En quelle année es-tu né? Je te fais la liste de toutes les années passées depuis ta naissance ;)"
print "> "
user_yearOfBirth = gets.chomp.to_i

(2021 - user_yearOfBirth + 1).times do
  puts user_yearOfBirth
  user_yearOfBirth += 1
end 