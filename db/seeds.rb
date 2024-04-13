# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "3145663102", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St London E1 6PQ", phone_number: "4588651452", category: "italian"}
sushi_sakura = {name: "Sushi Sakura", address: "458 Rue Laurier, Montréal", phone_number: "4588651762", category: "japanese"}
des_frites = {name: "Des Frites", address: "7859 Rue Sainte Catherine Est, Montréal", phone_number: "4588614756", category: "belgian"}
beijing_dumpling = {name: "Beijing Dumpling", address: "1452 Avenue Sherbrooke, Montréal", phone_number: "1245624785", category: "chinese"}

[dishoom, pizza_east, sushi_sakura, des_frites, beijing_dumpling].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
