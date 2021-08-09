puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
puts ">"
etage_number = gets.chomp.to_i 

puts "Voici la pyramide: "

1.upto(etage_number) do |i|
  puts " " * (etage_number) + "#" * ( 2 * i - 1)
  etage_number = etage_number - 1
end

puts ""