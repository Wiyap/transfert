puts "C'est quoi ton âge ?"
print "> "
user_age = gets.chomp.to_i
user_yearOfBirth = 2021 - user_age
timeLeftBefore100 = 100 - user_age
yearOf100 = 2021 + timeLeftBefore100


puts "Bonjour, tu auras 100ans en #{yearOf100} !"