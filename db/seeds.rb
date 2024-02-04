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

restaurants_data = [
  { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" },
  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" },
  { name: "La Cosa mia", address: "123 Some St, London W1 4AB", category: "japanese" },
  { name: "Five Guys", address: "789 Another St, London SE3 5CD", category: "french" },
  { name: "Tibittis", address: "456 Different St, London NW2 6EF", category: "belgian" }
]
restaurants_data.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
end
puts "Finished!"
