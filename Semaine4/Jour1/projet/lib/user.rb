require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'

class User
  attr_accessor :email
  attr_accessor :age

  @@user_array = []

  def initialize(email,age)
    @email = email
    @age = age

    @@user_array << self

    puts "L'email est: #{@email}"
    puts "L'age est: #{@age}"
  end

  def self.find_by_email(email)
    (@@user_array.length).times do |i|
      if email == (@@user_array[i].email)
        return @@user_array[i]
      else
        return "pas de mail trouvé"
      end
    end
  end
end