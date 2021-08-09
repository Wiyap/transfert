require 'pry'

class Player
    attr_accessor :name, :life_points
    #name = string
    #life_points = integer
    @@all_players = []
     
def initialize (name)
    @name = name 
    @life_points = 10
    @@all_players << self 
end


def self.all
 return @@all_players 
end

def self.find_by_name (name)
    @@all_players.each do |player|
    if player.name == name
        return player
    end
end
end 

def gets_damage (number)
    #damage_received est un entier)
    #player1.gets_damage(5) ds la console  
    @life_points = @life_points - number
end


if @life_points = 0
    puts "Le joueur #{José} a été tué !"
end


def attacks (player1, player2)
#player1.attacks(player2)
player1 = attacks(player2)

puts "le joueur #{José} attaque le joueur #{Josiane}"
end
end

player1 = Player.new("José")
player2 = Player.new("Josiane")

def compute_damage (number)
    @life_points = compute_damage 
    @life_points_for_count_in (1..6)
    return rand(1..6)
    end
end








  






















    

