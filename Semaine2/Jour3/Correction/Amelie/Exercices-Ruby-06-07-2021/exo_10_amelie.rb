puts "En quelle année es-tu né?"
print "> "
user_yearOfBirth = gets.chomp.to_i

(2021 - user_yearOfBirth + 1).times do |age|
  puts "En #{user_yearOfBirth}, tu avais #{age} ans"
  user_yearOfBirth += 1
  age += 1
end 



