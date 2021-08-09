puts "Donne moi un nombre"
user_number = gets.chomp
user_number = user_number.to_i
user_number.times do |i|
    i = i+1
    puts i
end
