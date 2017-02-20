# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = 5.times.map do
  User.create!(username: Faker::Name.first_name, email: Faker::Internet.email, password: "abc123")
end

users.each do |user|
  Post.create!(title: "Such post, much wow", body: "So Wow", user_id: user.id)
end

users.each do |user|
  Game.create!(name: Faker::Zelda.game, platform: "Nintendo", esrb_rating: "E", genre: "Adventure", score: 8, user_id: user.id)
end
