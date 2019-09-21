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


url = [
  "https://media-cdn.tripadvisor.com/media/photo-o/0e/7a/70/64/2eme-salle-du-restaurant.jpg",
  "https://www.toute-la-franchise.com/images/zoom/fiches-franchises/restaurant_de_viande-franchis_ela_c__te_et_l'ar__te_4.jpg",
  "https://lascala-paris.com/wp-content/thumbnails/uploads/2018/10/hartl-meyer_restaurant_0089_final-small-e1539254629646-tt-width-875-height-656-fill-0-crop-0-bgcolor-eeeeee.jpg",
  "https://img-aws.ehowcdn.com/560x560/photos.demandstudios.com/getty/article/178/80/92572695.jpg",
  "https://www.grand-hotel-uriage.com/media/cache/jadro_resize/rc/t3vZi00r1563956452/jadroRoot/medias/5c237ef54140d/dg-4-avec-credit-photo-basse-def.jpg",
  "https://ad962edbae8ba7b03b7f-d10007df79b5b7a4e475a291e50a08cf.ssl.cf3.rackcdn.com/statut-juridique-restaurant/statut-juridique-restaurant.jpg",
  "http://sakamanga.com/img/photo-resto-saka.jpg",
  "http://www.madadecouverte.com/images/tananarive/hotel-chambre-hote/RESTO_12.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/16/4b/ef/5f/salle-de-restauration.jpg"

]

for a in (0..url.length-1)
  restaurant = Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        description: Faker::Restaurant.description,
        gerant_id:Gerant.all.sample,
        image_url: url[a]
        )
end


category =["Dessert","Entrée","Résistance","Boisson"]

for i in (0..category.length-1)
  menu = Menu.create(category:category[i])
end


urlfood = [
"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZbitxjD5JfwpXIiBVTxyYIXvUySDCG4si2PYxIpxeM88yUs_N",
"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTAWiD0lJk7CjmAzRmix7BRGpN8-OoZMB50S82SxUb9hsWLnXLh",
"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR_BT3kk0VsL5jS5ryRDfq0naUf6bCBtRJWxN1TtmALHGwoCJRX",
"http://recettescookeo.com/wp-content/uploads/2015/03/xrecettes-plats-cookeo.jpg.pagespeed.ic.Ie3QCX1EzE.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRR_2IAEiooW0c37GjGmvlvyQFLS8evCW2RfPZ3fP8Th4FvEvHV",
"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRGRsQltJactIHI4SIsD_SOaAyExkpog8rW_ZuZUxKTJQw5qZSO",
"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9J84b-TUgyE-rqjp78Q1ZNB1wW_8q_-WUkGTxOrWhdE2eMWav"
]
for a in (0..urlfood.length-1)
food =Food.create!(
        name:Faker::Food.dish,
        description:Faker::Food.description,
        duration:rand(1..60),
        price:Faker::Commerce.price,
        menu:Menu.all.sample,
        image_url: urlfood[a]
      )
end

join = JoinRestoFood.create(restaurant_id: rand(1..2), food_id: Food.all.sample)

puts "resto"
puts "menu"
puts "food"
