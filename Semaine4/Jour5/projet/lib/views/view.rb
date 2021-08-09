require 'bundler'
Bundler.require

class View
  attr_accessor 

  def initialize
    
  end

  def create_gossip
    puts "Quelle potin veux tu nous partager?"
    print ">"
    gossip = gets.chomp
    puts "Et tu t'appelles comment au juste? (t'inquiètes je le dirai à personne  😉 )"
    print ">"
    author = gets.chomp
    params = Hash[content: gossip, author: author]
    return params
  end

  def index_gossip(gossip_array)
    puts"Voilà tout les potins qu'on a en stock!"
    gossip_array.each do |gossip|
      puts"#{gossip[0]} à dit que #{gossip[1]}! Oh alala 😲"
    end
  end
  

  def delete_gossip
    gossip_array = CSV.read("db/gossip.csv")
    puts "Quel potin veux-tu supprimer? Tape le numéro du gossip en question:"
    i = 1
    gossip_array.each do |gossip|
      puts"#{i}) #{gossip[0]} à dit que #{gossip[1]}! Oh alala 😲"
      i += 1
    end
    print"> "
    return gets.chomp.to_i
  end    
end