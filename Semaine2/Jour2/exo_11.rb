puts "Donne ton année de naissance"

user_birthyear = gets.chomp.to_i
user_age = 2021 - user_birthyear
i = user_age + 1
j = -1

(user_age+1).times do i
    i = i - 1
    j = j +1 
    if ( j <= 1 ) 
        puts "Il y a #{i.to_s} ans tu avais #{j.to_s} an !"
    elsif (i <= 1)
        puts "Il y a #{i.to_s} an tu avais #{j.to_s} ans !"
    else
        puts "Il y a #{i.to_s} ans " + "tu avais #{j.to_s} ans !"
    end
end
