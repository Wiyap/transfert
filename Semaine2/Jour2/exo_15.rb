puts "Donne moi un nombre"
number = gets.chomp.to_i + 1
number.times do |i|
        puts  "#" * i
end