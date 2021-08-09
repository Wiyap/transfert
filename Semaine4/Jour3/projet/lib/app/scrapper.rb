require 'bundler'
Bundler.require


#Sélectionne le nom des villes
class Scrapper

  def initialize
    perform
  end
  
  def mairie_names
    mairie_names = []

    page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise"))

    page.css('td > p > a.lientxt').each do |node|
      mairie_names << node.text.capitalize
    end

    return mairie_names
  end

  #Créer une liste des sites des villes

  def mairie_links
    page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise"))

    mairie_end_links = page.css('td > p > a.lientxt').map { |link| link['href'].delete_prefix(".") }

    mairie_links = []

    mairie_end_links.each do |n|
      mairie_links << "http://annuaire-des-mairies.com" + n
    end
    return mairie_links
  end

  #Créer la liste des mails

  def mairie_mail
    mairie_mail = []

    mairie_links.each do |n|

      page = Nokogiri::HTML(URI.open("#{n}"))
      if (page.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]').text) == ""
        mairie_mail << "Pas de mail!"
      else
        mairie_mail << page.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]').text
      end

    end
    return mairie_mail
  end

  #Créer l'annuaire des mails

  def annuaire_des_mails
    annuaire_des_mails = Hash[mairie_names.zip(mairie_mail)].map{|k, v| {k => v}}
    
    return annuaire_des_mails
  end

  def save_as_JSON
    annuaire_des_mails = self.annuaire_des_mails

    File.open("emails.JSON","w") do |f|
      f.write(annuaire_des_mails.to_json)
    end
  end

  def save_as_spread_sheet

    email = File.read('/home/ludovic/Desktop/THP/Semaine4/Jour3/projet/db/emails.JSON')
    email = JSON.parse(email)

    session = GoogleDrive::Session.from_config(".config.json")
    ws = session.spreadsheet_by_url("https://docs.google.com/spreadsheets/d/1bPBbXJSBtU7IcEDreW5zPqXzAic2xfM7L_ASsV8Bnpk/edit?usp=sharing").worksheets[0]

    ws[1, 1] =  "Mairie du Val d'Oise"
    ws[1, 2] =  "E-mail"


    email.each do |hash|
      hash.each do |key, value|
        ws[(email.index(hash))+2,1] = key.to_s
        ws[(email.index(hash))+2,2] = value.to_s
      end
    end

    ws.save
  end

  def save_as_csv
    annuaire_des_mails = self.annuaire_des_mails
    
    CSV.open("db/emails.csv", "w") do |csv|
      annuaire_des_mails.each do |n|
        n.each do |k,v|
          csv << [k,v]
        end
      end
    end
  end


  def perform
    save_as_csv
  end
end