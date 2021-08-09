def game
    i=0
    compteur = 0
    de = 0
    while i < 10
        j=0
        while j == 0
        puts "Entre 'l' pour lancer le dé"
        print ">"
        input_de = gets.chomp
            if input_de == "l"
            de = rand (1..6)
                if de > 4 
                    i = i + 1
                    puts "Tu montes d'une marche!"
                    puts "Tu es maintenant sur la marche n°#{i}!"
                elsif de == 1 && i <1
                    puts "Tu ne peux pas tomber plus bas!"    
                elsif de == 1
                    i = i - 1
                    puts "Mince... Tu descends d'une marche..."
                    puts "Tu es maintenant sur la marche n°#{i}!"
                
                else
                    puts "Rien ne se passe."
                    puts "Tu es sur la marche n°#{i}"
                end
            j=1
            else
            puts "Erreur: la commande rentrée n'existe pas!"
            end
        end
    end
    puts "T'as réussi sérieux? WoW "
end


def game2
    i=0
    compteur = 0
    de = 0
    while i < 10
        de = rand (1..6)
            if de > 4 
                i = i + 1
            elsif de == 1 && i <1
            elsif de == 1
                i = i - 1
            end
        compteur = compteur + 1
    end
    return compteur
end

def average_finish_time
numbers = []
addition = 0.to_f
    for i in 1..100
        compteur = game2
        array = array.push(compteur)   
    end

    numbers.each do |number|
        
        addition = addition + number

    end
mean = addition/100
return puts mean
end

average_finish_time