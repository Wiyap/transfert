puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
puts ">"
etage_number = gets.chomp.to_i 

puts "Voici la pyramide:"

for i in 1..etage_number do
  puts " " * etage_number + "#" * i
  etage_number = etage_number - 1
end

puts ""