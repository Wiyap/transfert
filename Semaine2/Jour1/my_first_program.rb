puts "Dit moi, c'est quoi ton petit nom?"
username = gets.chomp
puts "Et suivis de?"
userlastname = gets.chomp
puts "Salut " + username + " " +userlastname + " ;) !"
puts "T'es né quand?"
userbirthyear = gets.chomp
age2017 = 2017 - userbirthyear.to_i
puts "Tu as donc eu " + age2017.to_s + " en 2017"
puts "Donne moi un nombre"
nombre = gets.chomp
nombre = nombre.to_i
nombre.times do "Salut ça farte?"
    puts "Salut ça fart?"
end

puts "Donne m'en un autre!"
nombre2 = gets.chomp
nombre2 = nombre2.to_i

nombre2.times do |i|
    i = i+1
    puts i

