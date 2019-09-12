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

5.times do 
	restaurant = Restaurant.create(name: Faker::Restaurant.name,
		                           address:Faker::Address.street_address,
		                           description:Faker::Restaurant.description,
		                           image_url:"#{Faker::Restaurant.name}@gmail.com"


		)
	
end

 5.times do
 	category =["Dessert","Entrée","Résistance","Boisson"]
     for i in (0..category.length-1)
 	 menu = Menu.create(category:category[i])
 	end
end	



5.times do
	food =Food.create!(name:Faker::Food.dish,
		              description:Faker::Food.description,
		              duration:rand(1..60),
		              price:Faker::Commerce.price,
		              menu:Menu.all.sample
		                 )
end	

puts "resto"
puts "menu"
puts "food"