require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'


search = ARGV
search = search.join("+")

Launchy.open("https://www.google.com/search?q=#{search}")