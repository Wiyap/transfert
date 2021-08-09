puts "Donne moi un nombre"

user_number = gets.chomp.to_i
i = user_number + 1

(user_number+1).times do
    i = i-1
    puts i
end