# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Clear existing data
Restaurant.destroy_all

# Create restaurants
restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "01 23 45 67 89", category: "french" },
  { name: "Sushi Delight", address: "1234 Tokyo", phone_number: "12 34 56 78 90", category: "japanese" },
  { name: "Pasta Paradise", address: "456 Pasta Avenue", phone_number: "34 56 78 90 12", category: "italian" },
  { name: "Casa di Pizza", address: "789 Pizza Street", phone_number: "56 78 90 12 34", category: "italian" },
  { name: "Wok Star", address: "5678 Beijing", phone_number: "78 90 12 34 56", category: "chinese" }
]

restaurants.each do |restaurant_attrs|
  Restaurant.create!(restaurant_attrs)
end

puts "Seed completed successfully!"
