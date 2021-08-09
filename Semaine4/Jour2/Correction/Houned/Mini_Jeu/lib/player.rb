require "bundler"
Bundler.require

class Player
  attr_accessor :name, :life_points
  def initialize(name)
      @name = name
      @life_points = 10
  end

  def show_stats
      "#{name} a #{life_points} points de vie "
  end

  def gets_damage(value)
      @life_points = @life_points - value
      if  life_points <= 0
          puts"#{name} est mort"
      else
         puts show_stats
      end
  end

  def attacks(a =[])###<= : Methode qui permet a un user d'attaquer un autre user et de lui infliger des dégats
  puts "le joueur #{self.name} attaque le joueur #{a.name} et lui inflige #{dmg = compute_damage} dégats."
  a.gets_damage(dmg)
  end

  def compute_damage
      return rand(1..6)
  end
end

class HumanPlayer < Player ############################################<===== :  nouvelle classe HumanPlayer hériter de Player creer plus haut
    attr_accessor :weapon_level, :name, :life_points

    def initialize(name)############################################<===== : initialisation supplémentaire de la variable weapon_level afin d'augmenter les dégats de son arme
        @name = name.to_s
        @life_points = 100
        @weapon_level = 1
    end

    def show_state
        return "#{@name} a #{life_point} points de vie et une arme de niveau #{@weapon_level}"
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon############################################<===== : Methode qui permet a l'utilisateur humain de pouvoir changer d armes s il le souhaite
        @style_weapon = rand(1..6)
        @style_weapon2 = rand(1..6)
        puts "Tu as degoté une arme de niveau : #{@style_weapon}"
        puts "Tu peux en avoir une meilleur si tu veux.. "
        puts "Allez on retente sa chance"
        puts "TADAAAAAAAAA"
        puts "Une arme de niveau #{@style_weapon2} vient de sortir !!!"
        puts "laquelle veux tu?"
        puts "Tape 1 ou 2 "
        @choise = gets.chomp.to_i
            if @choise == 1
                @weapon_level = @style_weapon
                return "Ca marche, tu gardes une arme de niveau : #{@weapon_level}"
            elsif @choise == 2
                @weapon_level = @style_weapon2
                return "A ta convenance!!... Tu as récuperer une arme de niveau #{@weapon_level}"
            elsif @choise != 1 && @choise != 2
                return "Valeur incorrect, on a dit 1 ou 2 oueshh!!"
            end
            
            end

    def search_health_pack############################################<===== : methode qui permet à l'utilisateur de pouvoir recuperer un healthpack de l espace, un moyen ou pas du tout!
        @health_pack = rand(1..6)
        if @health_pack == 0
            return "Tu n'as rien eu, pas de bol!!!"
        elsif  @health_pack >= 2 && @health_pack <= 5
            @life_point = @life_point + 50
            return "Great!!, Tu obtiens 50 pv supplementaire, tu as maintenant #{@life_point} pv."
        elsif @health_pack == 6
            @life_point = @life_point + 100
            return "Alors la mon gars, va jouer au loto. Tu gagnes 100 pv!!! Tu as maintenant #{@life_point} pv."
        end
    end
end


