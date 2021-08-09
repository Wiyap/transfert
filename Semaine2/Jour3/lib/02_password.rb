def signup()
i = 0
password = 0 
    while i == 0
        puts "Enter your new password:"
        print ">"
        password = gets.chomp
        puts "Confirm your new password:"
        print ">"
        password_confirm = gets.chomp
        if password == password_confirm
        puts "Your password was created successfully!"
        i = 1
        else
            puts "OMFG Pleeeeaaaase enter the same password twice... Seriously this is not that hard..."
        end
    end
return password
end

password = signup


def welcome_screen()
    puts "Greetings! Here a little secret."
    puts "L'eau ça mouille."
    puts "Chuuuuuuuuuut"
end

def login(mdp)
i=0
    while i == 0
        puts "Enter your password:"
        print ">"
        password_input = gets.chomp
        if mdp == password_input
            puts "Access granted!"
            i=1
        else
            puts "Access denied, please try again"
        end
    end
welcome_screen
end

login(password)