puts "Donne ton année de naissance"

user_birthyear = gets.chomp.to_i
user_age = 2021 - user_birthyear
i = user_age + 1
j = -1

(user_age+1).times do i
    i = i - 1
    j = j + 1
    if( i == j)
        puts "Il y a #{i} ans, tu avais la moitié de l'âge que tu as aujourd'hui." 
    elsif ( j <= 1 ) 
        puts "Il y a #{i} ans tu avais #{j} an !"
    elsif (i <= 1)
        puts "Il y a #{i} an tu avais #{j} ans !"
    else
        puts "Il y a #{i} ans tu avais #{j} ans !"
    end
end
