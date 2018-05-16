# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Spaceship.create(
    name: Faker::HitchhikersGuideToTheGalaxy.starship,
    location: "space coordinates",
    picture: "url",
    capacity: (50..200).to_a.sample,
    price: (500..10000).to_a.sample
    )
  p spaceship.name
end

# 10.times do
#   User.create(
#     name: Faker::HitchhikersGuideToTheGalaxy.character,
#     email: Faker::Internet.email,
#     avatar: Faker::Avatar.image("my-own-slug", "50x50"),
#     description: Faker::HitchhikersGuideToTheGalaxy.quote
#     )
# end
