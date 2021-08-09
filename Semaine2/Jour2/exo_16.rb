puts "Donne moi un nombre"
number = gets.chomp.to_i

number.times do |i|  
    print" " * (number-(i+1))
    puts"#" * (i+1)
end
