puts "Cb de fois veux-tu écrire 'Bonjour toi !' J'en écrirai 1 de moins, désolée ;)"
print "> "
user_age = gets.chomp.to_i

(user_age - 1).times do |i|
  puts "Bonjour toi ! "
end