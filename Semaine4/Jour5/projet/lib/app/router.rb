
class Router
  attr_accessor :controller

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "Fait ton choix!"
    puts ''
    puts "1) créer un gossip"
    puts "4) quitter l'app"
    print "> "
    while true
      case gets.chomp.to_i
      when 1
        puts "Qu'est-ce que t'as à me raconter"
        print "> "
        @controller.creat_gossip
      when 4
        puts "TchAAAAAAAaaooooo!"
      else
        puts "Ce choix n'existe pas, merci de ressayer"
      end
    end
  end
end