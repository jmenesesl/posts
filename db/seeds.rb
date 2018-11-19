# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
include Faker

100.times do
  Publicacion.create(
    title: Faker::Food.dish,
    text: Faker::Food.description,
    category: Faker::Military.air_force_rank,
    created_at: Faker::Date.between(60.days.ago, 30.days.ago)
    )
end
