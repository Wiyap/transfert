require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'pry'


def scrapping
page = Nokogiri::HTML(URI.open("https://www.footmercato.net/angleterre/premier-league/tableau/"))
#page source mots clé "tansfert"
  transfert = page.xpath('//td[contains(@class,"transfert")]')
#Information sur listem
  listem = page.xpath('//td[contains(@class,"listem")]')
#creation d'un array ou tout les transfert son collect
  transfert_array = transfert.collect(&:text)
#creation d'un autre array pour les info sur listem
  club_array = listem.collect(&:text)
#combinaison des deux array
  data = Hash[transfert_array.zip club_array]
  #retour de la methode (affiche le nom du joueur et sa valeur)
  final_data = data.map {|name, value| puts "#{name} => #{value("€,")}"}
    return final_data
end 

def perform 
  scrapping
end

perform 