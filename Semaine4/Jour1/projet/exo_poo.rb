require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'

class User
  def greet
    puts "bonjour toi:"
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end

  def show_instance
    print "Voici l'instance: "
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_mail
    return @email
  end
end


jean = User.new

class UserCard
  attr_accessor :mastercard
  @@user_count = 0

  def initialize(number)
    @mastercard = number
    @@user_count += 1
    puts "Carte bien enregistré!"
  end

  def self.count
    return @@user_count
  end
end


binding.pry

puts "end of file"



