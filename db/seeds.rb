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

	url = ["https://www.thonhotels.com/siteassets/hoteller/belgia/brussel/stanhope-hotel-brussels/mat-og-drikke/stanhope-hotel-brighton-restaurant-11.jpg?width=1100&height=550&mode=crop&quality=80",
	       "https://lascala-paris.com/wp-content/thumbnails/uploads/2018/10/hartl-meyer_restaurant_0089_final-small-e1539254629646-tt-width-875-height-656-fill-0-crop-0-bgcolor-eeeeee.jpg",
	       "https://img-aws.ehowcdn.com/560x560/photos.demandstudios.com/getty/article/178/80/92572695.jpg",
	       "https://www.grand-hotel-uriage.com/media/cache/jadro_resize/rc/t3vZi00r1563956452/jadroRoot/medias/5c237ef54140d/dg-4-avec-credit-photo-basse-def.jpg",
	       "https://bateaux-nantais.fr/storage/slider/slider_top/visuel-principal3-1200x1000px.jpg"]
	for a in (0..url.length-1)
	restaurant = Restaurant.create(name: Faker::Restaurant.name,
		                           address:Faker::Address.street_address,
		                           description:Faker::Restaurant.description,
		                           image_url:url[a]
     

		)
	end
	

 
   category =["Dessert","Entrée","Résistance","Boisson"]
     for i in (0..category.length-1)
 	 menu = Menu.create(category:category[i])
 	end



food_url = ["http://recettescookeo.com/wp-content/uploads/2015/03/xrecettes-plats-cookeo.jpg.pagespeed.ic.Ie3QCX1EzE.jpg",
        "https://kissmychef.com/wp-content/uploads/2019/03/Bibimbap-Coreen.jpg",
        "https://cdn-media.rtl.fr/cache/Fy8snQHknK3Dsrj11Wl16w/1620v1080-2/online/image/2015/0929/7779887848_un-steak-avec-des-frites-illustration.jpg",
        "https://blog.locatour.com/wp-content/uploads/2015/08/plat-espagnol-paella.jpg",
        "https://www.kitchendiet.fr/media/catalog/product/cache/1/small_image/570x570/17f82f742ffe127f42dca9de82fb58b1/k/d/kd_plat_gambas.jpg"
        ]
for j in (0..food_url.length-1)

	food =Food.create(name:Faker::Food.dish,
		              description:Faker::Food.description,
		              duration:rand(1..60),
		              price:Faker::Commerce.price,
		              image_url:food_url[j],
		              menu:Menu.all.sample
		                 )
 end

puts "resto"
puts "menu"
puts "food"