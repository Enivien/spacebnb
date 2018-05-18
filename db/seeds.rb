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
    location: "Mars",
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
    spaceship_id: 1,
    )
  booking.save!
  p booking.total_price
end

# create_table "users", force: :cascade do |t|
#     t.string "email", default: "", null: false
#     t.string "encrypted_password", default: "", null: false
#     t.string "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer "sign_in_count", default: 0, null: false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
#     t.inet "current_sign_in_ip"
#     t.inet "last_sign_in_ip"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "name"
#     t.text "description"
#     t.string "avatar"
#     t.index ["email"], name: "index_users_on_email", unique: true
#     t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   end
