require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'

require_relative 'game.rb'

class Player
  attr_accessor :name, :life_points 
  @@enemies = []

  def initialize (name)
    @name = name
    @life_points = 10
    @@enemies << self
  end

  def self.enemies
    @@enemies
  end

  def show_state
    puts "#{self.name} a #{self.life_points} points de vie"
  end

  def gets_damage(damage)
    self.life_points -= damage
    puts "Le joueur #{self.name} subit #{damage} points de dommage."
    if self.life_points <= 0
      puts "le joueur #{self.name} a été tué !"
    end
  end

  def compute_damage
    return rand(1..6)
  end

  def attacks(player)
    puts "Le joueur #{self.name} attaque le joueur #{player.name}:"
    damage = compute_damage
    player.life_points -= damage
    if damage >= 5
    puts "il lui inflige #{damage} points de dommages! C'est super efficace!"
    elsif damage <=2
    puts "il lui inflige #{damage} points de dommages! Ce n'est pas très efficace..."
    else 
    puts "il lui inflige #{damage} points de dommages!"
    end
    if player.life_points <=0
      puts "#{player.name} meurt."
    return "meurt"
    end
  end
end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    @name = name
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    puts "#{self.name} a #{self.life_points} points de vie et une arme de niveau #{self.weapon_level}"
  end

  def compute_damage
    rand(1..6) * self.weapon_level
  end

  def search_weapon
    new_weapon = rand (1..6)
    puts "Tu as trouvé une arme de niveau  #{new_weapon}"
    if new_weapon > self.weapon_level
      self.weapon_level = new_weapon
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
    else
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    heal = rand(1..6)
    if heal == 1
      puts "Tu n'as rien trouvé... Achète des lunettes!"
    elsif heal === [2..5] 
      if self.life_points > 50
        self.life_points = 100
      else
        self.life_points += 50
      end 
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
      puts "Tu as maintenant #{self.life_points}!"
    else
      if self.life_points > 20
        self.life_points = 100
      else
        self.life_points += 80
      end
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
      puts "Tu as maintenant #{self.life_points}!"
    end
  end
end



