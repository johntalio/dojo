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
  titles = ["I can't believe Bungie!", "From Software is the best!", "Mario is so overrated", "Zelda is waifu", "You are ALL wrong!", "I can't believe how naive people are!", "People who play video games are nerds", "Video games are life"]
  bodies = ["Bungie let go of one of my favorite franchises and now it's gone to hell!", "Dark Souls is the greatest franchise EVER! Phenomenal IP", "Mario can drown in sewer water for all I care...", "ZELDA I'LL BE YOUR HERO", "And I'm right!", "Can't you see that Chun Lee is best waifu?!", "But people who play chess are geniuses. Heh.", "And I will appreciated this life forever :D"]

  Post.create!(title: titles.sample, body: bodies.sample, user_id: user.id)
end

users.each do |user|
  Game.create!(name: Faker::Zelda.game, platform: "Nintendo", esrb_rating: "E", genre: "Adventure", score: 8, user_id: user.id)
end
