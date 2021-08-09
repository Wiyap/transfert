require 'pry'
require 'bundler'
Bundler.require

class Game 
    attr_accessor :current_player, :status, :board, :player1, :player2, :show
    def initialize
      #réer 2 joueurs, créé un board, met le status à "on going", défini un current_player
      @player1 = Player.new
      @player2 = Player.new
      players = [@player1, @player2]
      @status = "on going"
      @board = Board.new
      @current_player = players[0]
      @show = Show.new
    end
end


