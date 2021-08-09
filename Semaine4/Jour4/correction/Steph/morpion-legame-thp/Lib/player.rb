require 'pry'
require 'bundler'
Bundler.require

class Player 
    #doit y avoir 2 instances
    attr_accessor :name, :value
    @@all_players = []

    def initialize (name_to_save, value_to_save)
        @name = name_to_save
        @value = x, o
        @@all_players << self
    end

    def self.all
        return @@all_players
    end
    
    def show_state 
        "#{@name}a toi de jouer." 
    end

    def self.find_by_name (name)
        @@all_players.each do |player|
        if player.name == nameÒ
            return player
    end 
        end
    end
end 




