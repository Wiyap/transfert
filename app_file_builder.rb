print "La semaine: "
semaine = gets.chomp
print "Le jour: "
jour = gets.chomp


###########################
# Créer tous les dossiers #
###########################

begin
  Dir.mkdir("/home/ludovic/Desktop/THP/Semaine#{semaine}")
rescue Exception => e
  puts "Oups la semaine #{semaine} existe déjà! Mais c'est pas grave ¯\\\_(ツ)_/¯" 
end

begin
  Dir.mkdir("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}")
rescue Exception => e
  puts "Oups le jour #{jour} existe déjà! Mais c'est pas grave ¯\\\_(ツ)_/¯" 
end

Dir.mkdir("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet")
Dir.mkdir("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/db")
Dir.mkdir("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/lib")
Dir.mkdir("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/lib/app")
Dir.mkdir("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/lib/views")

###########################
# Créer tous les fichiers #
###########################

file = File.open("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/.gitignore", "w")
file.puts(".env")
file.close

file = File.open("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/.env", "w")
file.close

################
# Créer app.rb #
################
file = File.open("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/app.rb", "w")
file.puts("require 'bundler'")
file.puts("Bundler.require")
file.puts("")
file.puts('$:.unshift File.expand_path("./../lib", __FILE__)')
file.puts("MyClass.new.perform")
file.puts("")
file.puts("")
file.puts("")
file.close

file = File.open("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/lib/views/done.rb", "w")
file.puts("require 'bundler'")
file.puts("Bundler.require")
file.close

file = File.open("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/lib/views/index.rb", "w")
file.puts("require 'bundler'")
file.puts("Bundler.require")
file.close

#################
# Créer Gemfile #
#################

file = File.open("/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet/Gemfile", "w")
file.puts("source 'https://rubygems.org'")
file.puts("ruby '2.7.1'")
file.puts("gem 'bundler'")
file.puts("gem 'rspec'")
file.puts("gem 'pry'")
file.puts("gem 'nokogiri'")
file.puts("gem 'open-uri'")
file.puts("gem 'watir'")
file.puts("gem 'dotenv'")
file.puts("gem 'twitter'")
file.puts("gem 'rubocop', '~> 0.57.2'")
file.puts("gem 'launchy'")
file.puts("gem 'json'")
file.close


############################################
# Bundle install // Rspec --init // Vscode #
############################################

Dir.chdir "/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet" do
  system 'bundle install'
end

Dir.chdir "/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet" do
  system 'rspec --init'
end

Dir.chdir "/home/ludovic/Desktop/THP/Semaine#{semaine}/Jour#{jour}/projet" do
  system 'code .'
end