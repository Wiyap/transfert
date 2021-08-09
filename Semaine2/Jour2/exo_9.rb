puts "Donne ton année de naissance"

user_birthyear = gets.chomp.to_i
user_age = 2021 - user_birthyear
i = user_birthyear - 1

(user_age+1).times do
    i = i+1
    puts i
end