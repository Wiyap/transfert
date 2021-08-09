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

#Menu de lancement
  puts "-------------------------------------------------"
  puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
  puts "|Le but du jeu est d'être le dernier survivant !|"
  puts "-------------------------------------------------"

  puts "Choisis un nom!"
  print ">"
  name = gets.chomp

  #Lancement du jeu

  my_game = Game.new(name)

  my_game.menu