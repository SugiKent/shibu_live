# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_name = ["Ballade", "Rock", "J-Pop", "K-Pop", "Classic", "Jazz", "Dance", "Reggae", "EDM", "Performers"]

category_name.each do |name|
  Category.create(name: name)
end