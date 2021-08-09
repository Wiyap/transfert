require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'

class EventCreator
  attr_accessor :event

  def name_event
    puts "  Salut, tu veux créer un événement ? Cool !\nCommençons. Quel est le nom de l'événement ?"
    print ">"
    return gets.chomp
  end

  def date_event
    puts "Super. Quand aura-t-il lieu ?"
    print ">"
    return gets.chomp
  end

  def duration_event
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print ">"
    return gets.chomp
  end

  def array_event
    puts "Génial. Qui va participer ? Balance leurs e-mails"
    print ">"
    return gets.chomp
  end

  def initialize
    name = name_event
    date = date_event
    duration = duration_event.split(";")
    arr = array_event
    Even.new(date,duration,name,arr)
    puts "Super, c'est noté, ton évènement a été créé !"
  end
end