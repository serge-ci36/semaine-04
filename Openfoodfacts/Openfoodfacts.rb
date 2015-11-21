require 'open-uri'
require 'json'

loop do
    
    # Récupération du Code Barre
    print "Veuillez saisir un numéro de code barre (ou Q pour QUITTER) : "
    bar_code = gets.chomp
    
    # Quitter le programme
    break if bar_code == "Q"
    
    # Récupération des datas
    url="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"
    json=open(url).read
    data=JSON.parse(json)
    
    # Affichage des données
    print "Produit : "
    puts data['product']['product_name']
    print "Fabriquant : "
    puts data['product']['brands_tags']
    print "Ingredients : "
    puts data['product']['ingredients_text']
    print "Distributeur : "
    puts data['product']['origins']

    end
    
    print "A bientôt"



# var foodfact = { barcode : '3073780969000', name : 'KIRI GOUTER 280G 8 PORTIONS', energy: 500, energy_unit: "kJ", weight: 282 } 