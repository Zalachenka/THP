require 'pry'
require 'dotenv'
def multiply_by_6(var) #définition d'une méthode multipliant par 6 en 2 étapes
var = var * 2
binding.pry # On lance PRY au milieu de la méthode
var = var * 3
return var
end

multiply_by_6(5) # j'exécute la méthode sur la valeur 5require 'dotenv'# Appelle la gem Dotenv

Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que le programme Ruby) grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

# Il est ensuite très facile d'appeler les données du fichier .env, par exemple là je vais afficher le contenu de la clé TWITTER_API_SECRET
puts ENV['TWITTER_API_SECRET']

# tout est stocké dans un hash qui s'appelle ENV. Tu peux le regarder en faisant :
puts ENV