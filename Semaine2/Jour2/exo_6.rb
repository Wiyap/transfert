puts "Donne moi un nombre"
user_number = gets.chomp
user_number = user_number.to_i - 1
user_number.times do 
    puts "Bonjour toi !"
end
