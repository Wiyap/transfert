puts "Quel est ton âge?"
print "> "
user_age = gets.chomp.to_i

(user_age + 1).times do |age|
  if user_age == age
    puts "Il y a #{user_age} an(s), tu avais la moitié de ton âge"
  else 
    puts "Il y a #{user_age} an(s), tu avais #{age} an(s)"
  end
  user_age -= 1
  age += 1
end 