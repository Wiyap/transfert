require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'

require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

#Menu de lancement et création des joueurs

puts "-------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"

puts "Choisis un nom!"
print ">"
name = gets.chomp
user = HumanPlayer.new(name)

bot1 = Player.new("Josiane")
bot2 = Player.new("José")

#Menu: champ de bataille ou le HumanPlayer affronte les bots

while user.life_points > 0 && (bot1.life_points > 0 || bot2.life_points > 0)

  puts ""
  puts "--------------------------------------------------------------------"
  puts user.show_state
  puts "Quelle action veux-tu effectuer ?"
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner" 
  puts ""
  puts "attaquer un joueur en vue :"
  puts "0 - Josiane a #{bot1.life_points} points de vie"
  puts "1 - José a #{bot2.life_points} points de vie"
  print ">"
  choice = gets.chomp

  case choice
  when "a"
    user.search_weapon
  when "s"
    user.search_health_pack
  when "0"
    user.attacks(bot1)
  when "1"
    user.attacks(bot2)
  else
    puts "Tu essayes de faire #{choice} mais rien en se passe..."
    puts "Le temps que tu as pris pour faire #{choice} on laissé le temps a tes ennemis de t'attaquer!"
  end
  puts ""
  
  if bot1.life_points > 0 || bot2.life_points > 0
    puts "Les autres joueurs attaquent!!"
    puts ""
    Player.enemies.each do |n|
      if n.life_points > 0
        n.attacks(user)
      end
    end
  end
  puts "--------------------------------------------------------------------"
end

#Display si joeur a gagné ou perdu

if user.life_points > 0
  puts "BRAVO ! TU AS GAGNE !"
elsif user.life_points <= 0 
  puts "T'es mauvais Jack! Tu sais pas jouer AHAHHAHAHAHAHAHAHAHAHHAHAHAAH!"
end