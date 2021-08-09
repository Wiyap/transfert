require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'


require_relative 'lib/user.rb'
require_relative 'lib/event.rb'
require_relative 'lib/event_creator.rb'
require_relative 'lib/calendar_displayer.rb'

fete1 = Event.new("2019-01-5 09:00",30,"RDV","julie@julie.com ; jean@jean.jean")
fete2 = Event.new("2019-01-8 09:00",30,"RDV","julie@julie.com ; jean@jean.jean")
fete3 = Event.new("2019-01-21 09:00",30,"RDV RDV RDV","julie@julie.com ; jean@jean.jean")
fete4 = Event.new("2019-01-25 09:00",30,"RDV","julie@julie.com ; jean@jean.jean")
fete5 = Event.new("2019-01-30 09:00",30,"RDV","julie@julie.com ; jean@jean.jean")

calendrier = CalendarDisplayer.new

calendrier.perform