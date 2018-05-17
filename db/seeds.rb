# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  spaceship = Spaceship.new(
    name: Faker::HitchhikersGuideToTheGalaxy.starship,
    location: "space coordinates",
    capacity: (50..200).to_a.sample,
    price: (500..10000).to_a.sample,
    user_id: 1
    )
  spaceship.save!
  p spaceship.name
end

2.times do
  booking = Booking.new(
    start_date: Faker::Date.between(4.days.ago, Date.today),
    end_date: Date.today,
    total_price: 300000,
    user_id: 1,
    spaceship_id: 13,
    )
  booking.save!
  p booking.total_price
end

# 10.times do
#   User.create(
#     name: Faker::HitchhikersGuideToTheGalaxy.character,
#     email: Faker::Internet.email,
#     avatar: Faker::Avatar.image("my-own-slug", "50x50"),
#     description: Faker::HitchhikersGuideToTheGalaxy.quote
#     )
# end

  # create_table "bookings", force: :cascade do |t|
  #   t.date "start_date"
  #   t.date "end_date"
  #   t.integer "total_price"
  #   t.string "status"
  #   t.bigint "user_id"
  #   t.bigint "spaceship_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["spaceship_id"], name: "index_bookings_on_spaceship_id"
  #   t.index ["user_id"], name: "index_bookings_on_user_id"
  # end
