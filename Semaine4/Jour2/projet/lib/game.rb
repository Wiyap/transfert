require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'

require_relative 'player.rb'

class Game
  attr_accessor :human_player, :enemies, :players_left
  @@enemies_in_sight = []

  def initialize(name)
    @players_left = 10
    @human_player = HumanPlayer.new(name)
  end
  
  def kill_player(player)
    @@enemies_in_sight.delete(player)
  end

  def is_still_ongoing?
    @human_player.life_points > 0 && (@players_left > 0 || @@enemies_in_sight.length >0)
  end

  def show_players 
    puts @human_player.show_state
    puts "Il reste #{@@enemies_in_sight.length} ennemi(s)."
  end

  def enemies_attack
    puts "Les autres joueurs attaquent!!"
    puts ""
    @@enemies_in_sight.each do |n|
      if @human_player.life_points > 0
        n.attacks(@human_player)
      end
    end
  end

  #Créer les nouveaux joueurs

  def new_players
    num = rand(1..10000)
    @@enemies_in_sight << Player.new("player#{num}")
    puts "player#{num} viens d'arriver sur le champ de bataille!"
  end

  def new_players_in_sight
    de = rand(1..6)
    if @players_left > 0
      if de == 1
        puts "Aucun nouveau player en vu..."
      elsif [2..4] === de
        new_players
        @players_left -= 1
      else
        new_players
        new_players
        @players_left -= 2
      end
    end
  end

  #Menu qui permet de faire la distinction entre String et Integer

  def menu_choice(choice)
    
    if choice.to_i !=0
      choice = choice.to_i
    end     
    
    if choice.is_a? String
      case choice
      when "a"
        @human_player.search_weapon
      when "s"
        @human_player.search_health_pack
      else
        puts "Tu essayes de faire #{choice} mais rien ne se passe..."
        puts "Le temps que tu as pris pour faire #{choice} a laissé le temps a tes ennemis de t'attaquer!"
      end
    elsif choice.is_a? Integer
      case choice
      when 1..(@@enemies_in_sight.length)
      @human_player.attacks(@@enemies_in_sight[choice.to_i-1])
        if @@enemies_in_sight[choice.to_i-1].life_points <= 0
          kill_player(@@enemies_in_sight[choice.to_i-1])
        end
      else
        puts "Tu essayes de faire #{choice} mais rien en se passe..."
        puts "Le temps que tu as pris pour faire #{choice} on laissé le temps a tes ennemis de t'attaquer!"
      end
    else
      puts "Tu essayes de faire #{choice} mais rien en se passe..."
      puts "Le temps que tu as pris pour faire #{choice} on laissé le temps a tes ennemis de t'attaquer!"
    end
    puts ""
    if @@enemies_in_sight != 0
      enemies_attack
    end
  end

  #Message de fin de partie

  def end_game(human_player)
    if human_player.life_points >= 0
      puts "BRAVO ! TU AS GAGNE !"
    else
      puts "T'es mauvais Jack! Tu sais pas jouer AHAHHAHAHAHAHAHAHAHAHHAHAHAAH!"
    end
  end

  #Menu qui contient tout le jeu

  def menu
    while is_still_ongoing?
      puts ""
      new_players_in_sight
      puts ""
      puts "--------------------------------------------------------------------"
      puts @human_player.show_state
      puts "Quelle action veux-tu effectuer ?"
      puts "a - chercher une meilleure arme"
      puts "s - chercher à se soigner" 
      puts ""
      puts "attaquer un joueur en vue :"
      @@enemies_in_sight.each do |n|
        puts "#{(@@enemies_in_sight.find_index(n))+1} #{n.name} a #{n.life_points} points de vie"
      end
      print ">"
      choice = gets.chomp
      menu_choice(choice)
      puts "--------------------------------------------------------------------"
    end
    end_game(@human_player)
  end
end