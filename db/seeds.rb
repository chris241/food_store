# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Food.destroy_all
Menu.destroy_all
Restaurant.destroy_all

require 'faker'

  restaurant1 =Restaurant.create( name: "Arirang Madagasar",
                                 address:"Rue Ramanantsoa A 50 m à droite du Manson (en regardant celui-ci) Tana - Antananarivo Madagascar",
                                 description:"Petit resto de spécialités coréennes (barbecue qu'on peut faire soi-même à table sur un te pan ou plaque chauffé). A tout l'air d'un boui-boui, mais la cuisine est de bien meilleure qualité ! Toutefois, tout n'est pas du même niveau, et les saveurs sont assez épicées. Essayez les Mandoo (raviolis farcis aux brèdes et à la viande), les Kimpab (sushis), les Japchae (nouilles de patates douces sautées), le Bulgogi gui (lamelles de zébu marinées) ou encore le Hemul dupbab (riz à la sauce fruits de mer). On sent un peu le graillon à la fin, mais c'est très bon !",
                                 gerant_id: 1,
                                 image_url:"https://media-cdn.tripadvisor.com/media/photo-s/10/f7/34/13/photo0jpg.jpg")
        
    
 
restaurant2 =Restaurant.create( name:"Le Carnivore - Restaurant Bar Lounge",
                                  address: " 66 Rue Ratsimilaho Ambatonakanga, Lalana Ranavalona III, Antananarivo 101",
                                  description:"Reprenant un concept bien établi au Brésil notamment (churrasqueira) ou à Nairobi au Kenya, ce resto propose de la viande à volonté : porc caramélisé ananas, ribs, côte d'agneau, poularde, gésier de poulet, du très bon zébu sous toutes ses formes, crocodile, sanglier, serpent... Sympa : on vous donne les drapeaux des nationalités présentes à votre table, que vous devez  coucher  quand vous n'avez plus faim. L'ensemble est correct, très branché, le service un peu dépassé par moments. A essayer pour le concept et si vous êtes carnivore avant tout ! Steeve propose aussi des véhicules en location." ,
                                  gerant_id: 1,
                                  image_url:"https://www.acteur-fete.com/system/pictures/images/000/345/677/gallery/397528_790171321012026_927507628_n.jpg?1510126109")
restaurant3 =Restaurant.create( name:"LE Kudéta",
                                  address: " 15, rue de La Réunion Isoraka Tana - Antananarivo Madagascar",
                                  description:"Dans la même bâtisse que la Résidence Lapasoa (mêmes propriétaires). Rien à dire, cette adresse chaleureuse et bien décorée (pierre, bois de palissandre, briques, peintures locales) séduit une clientèle fidèle et enthousiaste. A découvrir (mais la carte change souvent) : les spécialités de foie gras (à la fleur de sel épicée et gelée de vin rouge, parfumé aux baies roses, en deux cuissons, avec chutney de pain d'épices maison), la grillade de langouste marinée aux aromates, le duo de mérou laqué, les noisettes de zébu sur lit de girofle sauce au foie gras, fricassé de calamar au piment combo... En dessert une sélection chocolatée avec coulant au chocolat et sorbet citron vert, ou feuille en feuille de craquant chocolat, miam... Une vraie bonne table à l'ambiance ethno chic occidentale. Férus d'art les propriétaires vous offrent des expositions éphémères et permanentes de tableaux." ,
                                  gerant_id: 1,
                                  image_url:"https://media-cdn.tripadvisor.com/media/photo-s/02/5c/14/fd/restaurant-sous-la-verriere.jpg"
                                   )
restaurant4 =Restaurant.create( name:"Carlton Madagascar",
                                  address: "Rue Pierre-Stibbe Anosy Tana - Antananarivo Madagascar",
                                  description:"Ce grand immeuble campé en surplomb du lac Anosy fut la première tour  de Tana, en 1970. C'est toujours l'un des bâtiments les plus imposants de la capitale et l'hôtel le plus luxueux de la ville, rare émanence d'une chaîne implantée partout dans le monde - soit la garantie de prestations 5* aux standards internationaux. Doté de 171 chambres et suites bien équipées (salle de bain de luxe, TV câblée, téléphone, coffre-fort, minibar, room service 24h/24...), il est une référence pour les hommes d'affaires et pour voyageurs qui ne transigent pas sur un certain niveau de service, d'élégance et de qualité : piscine de 25 mètres à ciel ouvert rénovée récemment, court de tennis en terre battue, salle de remise en forme, banque et guichet automatique, business center, salles de conférence, agence de voyages et de location de voitures etc., et une agréable galerie marchande où acquérir, entre autres, des gousses de vanille de grande qualité et du rhum Dzama. On apprécie le restaurant-café Ile Rouge et sa terrasse, les cocktails et sushis du Bistrot, les pâtisseries de l'Eclair, les salades et grillades servies au grand air sous les paillotes décontractées de l'Oasis. En soirée, place à l'ambiance cosy du casino ou l'atmosphère endiablée du Club Kudeta - petit frère du resto-bar éponyme de la vieille ville décliné ici en mode latino-urbain." ,
                                  gerant_id: 1,
                                  image_url:"https://pbs.twimg.com/media/Dpyz91zXUAEjCK8.jpg"
                                   )


category =["Dessert","Entrée","Résistance","Boisson"]

for i in (0..category.length-1)
  menu = Menu.create(category:category[i])
end

food =Food.create!(
        name:"l’Eclair",
        description:"Le paradis des gourmands et des amoureux du bon pain. En salle ou en terrasse, l’Eclair vous surprendra par la qualité de ses créations pâtissières.",
        duration: 7,
        price: 5000,
        menu: Menu.all.sample
      )



puts "restaurant 1"

puts "restaurant 2"

puts "restaurant 3"

puts "restaurant 4"

puts "menu"
puts "food"
