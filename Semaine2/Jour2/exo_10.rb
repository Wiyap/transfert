puts "Donne ton année de naissance"

user_birthyear = gets.chomp.to_i
user_age = 2021 - user_birthyear
i = user_birthyear - 1
j = -1

(user_age+1).times do 
    i = i+1
    j = j+1 
    puts "En #{i.to_s} tu avais #{j.to_s} ans !"
end