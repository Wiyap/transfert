puts "A partir de combien dois-je décompter?"
print "> "
user_number = gets.chomp.to_i

(user_number + 1).times do 
  puts user_number
  user_number +=1
end