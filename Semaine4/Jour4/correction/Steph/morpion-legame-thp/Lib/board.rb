require 'pry'
require 'bundler'
Bundler.require

Class Board
attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
    
    def initialize
      @array_boardcase = []
      @count_turn = 0
      @a1 = BoardCase.new("a1")  
      @a2 = BoardCase.new("a2")
      @a3 = BoardCase.new("a3")
      @b1 = BoardCase.new("b1")
      @b2 = BoardCase.new("b2")
      @b3 = BoardCase.new("b3")
      @c1 = BoardCase.new("c1")
      @c2 = BoardCase.new("c2")
      @c3 = BoardCase.new("c3")
      @board = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
    end

    def play_turn (player, choice)
        #methode qui demande au bon joueur ce qu'il souhaite faire
        #changer la boardcase jouée en fonction du joueur 
        puts "Sur quelle case veux-tu aller, tu dois choisir en fonction des #{empty_cases}"
        print ">" 
        choice  = gets.chomp
        @grid[choice]= "#{player.player_value}"
        @count_turn = @count_turn + 1
    end
        
    

    def victory
        # une méthode qui vérifie le plateau et indique s'il y a un vainqueur 
        #une methode qui vérifie le plateau et indique s'il y a un vainqueur ou un match nul (bolean)
        if @count_turn < 9

            if (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["A2"] && @grid["A1"] == @grid["A3"]
              puts " VICTOIRE !! "
              return true
            elsif (@grid["B1"].include?(" ") == false) && @grid["B1"] == @grid["B2"] && @grid["B1"] == @grid["B3"]
              puts " VICTOIRE !! "
              return true
            elsif (@grid["C1"].include?(" ") == false) && @grid["C1"] == @grid["C2"] && @grid["C1"] == @grid["C3"]
              puts " VICTOIRE !! "
              return true
            elsif (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["B1"] && @grid["A1"] == @grid["C1"]
              puts " VICTOIRE !! "
              return true
            elsif (@grid["A2"].include?(" ") == false) && @grid["A2"] == @grid["B2"] && @grid["A2"] == @grid["C2"]
              puts " VICTOIRE !! "
              return true
            elsif (@grid["A3"].include?(" ") == false) && @grid["A3"] == @grid["B3"] && @grid["A3"] == @grid["C3"]
              puts " VICTOIRE !! "
              return true
            elsif (@grid["A3"].include?(" ") == false) && @grid["C1"] == @grid["B2"] && @grid["B2"] == @grid["A3"]
              puts " VICTOIRE !! "
              return true
            elsif (@grid["A1"].include?(" ") == false) && @grid["A1"] == @grid["B2"] && @grid["B2"] == @grid["C3"]
              puts " VICTOIRE !! "
              return true
        end
          else
            puts "La partie est finie et c'est un match nul ! :-("
          end
    end
end




   
        



    






                


















