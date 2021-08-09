require 'bundler'
Bundler.require

hash = File.read('/home/ludovic/Desktop/THP/Semaine4/Jour3/projet/db/emails.JSON')
p hash.class
hash = JSON.parse(hash)
p hash.class
p hash
