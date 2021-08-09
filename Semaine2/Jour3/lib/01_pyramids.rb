def half_pyramid

    puts "Donne moi un nombre"
    number = gets.chomp.to_i
    number.times do |i|  
        print " " * (number-(i+1))
        print "#" * (i+1)

        print "\n" 
    end
end

half_pyramid

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    number = gets.chomp.to_i
    puts "Voici ta pyramide :"
        number.times do |i| 
                print " " *(number-(i+1))
                print "#" + "##"* i
        print "\n"
        end
end


full_pyramid

def wtf_pyramid
    puts "Salut, bienvenue dans ta super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print ">"
    number = gets.chomp.to_i    
    if number.odd? 
    puts "Voici ta pyramide :"
    j= 1
    k =number - 2
        number.times do |i| 
            if (i+1) <=((number/2)+1)
                print " " * (((number/2)+1)-(i+1)) 
                print "#" * (1+(2*i))
            print "\n"
            else
                print " " * j               
                print "#" * k
            j = j + 1
            k = k - 2
            print "\n"
            end
        end
    puts "Dit, elle est pas magnifique cette pyramide?"
    else
        puts "Erreur: Ton nombre n'est pas impairméable ils annoncent de la pluie! Si tu rentres trempé qu'est-ce qu'elle va dire ta mère?"
    end
end

wtf_pyramid    
    