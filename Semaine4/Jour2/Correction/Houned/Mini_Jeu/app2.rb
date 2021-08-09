

require 'bundler'
Bundler.require

require_relative 'lib/player'

puts " "
puts ' -------------------------------------------------'
puts " | Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts " | Le but du jeu est d'etre le dernier survivant !|"
puts " -------------------------------------------------"
puts " "

puts "Quel est ton nom ?"
print ">"

user = HumanPlayer.new(gets.chomp)
p user.life_points

enemies = []
enemies << player1 = Player.new("Paul")
enemies << player2 = Player.new("Bernard") 
p enemies
player1= enemies[0]
p player1
player2 = enemies[1]
p player2
p player1.life_points

while user.life_points > 0 && (player1.life_points > 0 && player2.life_points > 0)

user.show_state
break if((player1.life_points == 0 and player2.life_points == 0) or user.life_points == 0)
end


binding.pry