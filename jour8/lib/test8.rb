require 'nokogiri'
require 'pry'
require 'open-uri'
require 'rspec'

def depute(lien)
  array = []
  array2 = []
  array3 = []
  deputes_hash = {}
  page = Nokogiri::HTML(open("#{lien}"))

  page_email = page/"//a[starts-with(@href,'mailto')]" #Récupère les emails
  page_nom = page/"//a[starts-with(@href,'mailto')]"

  page_email.each do |email| 
    array2.push(email.text)   #Push les emails dans l'array
  end

  page_nom.each do |nom| 
    nom = nom.text
    nom = nom.gsub('@assemblee-nationale.fr','.') #Récupération des noms
    array.push(nom)
  end

  array = array.join.split('.') 

  x = 0    

  while x < array.count     #séparation des prénoms et noms de famille 
    if x % 2 == 0 

    else
        array3.push(array[x])
    end 
    x +=1
  end 

  deputes_hash = array2.zip(array3) #Mise en place du hash

  puts deputes_hash
  return deputes_hash[1]

end 

depute("https://www.mortchoisie.org/guide-pratique/d%c3%a9put%c3%a9s/index.html")