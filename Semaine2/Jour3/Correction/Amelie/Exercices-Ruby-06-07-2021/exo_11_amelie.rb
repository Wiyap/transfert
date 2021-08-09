puts "Quel est ton âge?"
print "> "
user_age = gets.chomp.to_i

(user_age + 1).times do |age|
  puts "Il y a #{user_age} an(s), tu avais #{age} an(s)"
  user_age -= 1
  age += 1
end