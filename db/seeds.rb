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

posts = users.each do |user|
  titles = ["I can't believe Bungie!", "From Software is the best!", "Mario is so overrated", "Zelda is waifu", "You are ALL wrong!", "I can't believe how naive people are!", "People who play video games are nerds", "Video games are life"]
  bodies = ["Bungie let go of one of my favorite franchises and now it's gone to hell!", "Dark Souls is the greatest franchise EVER! Phenomenal IP", "Mario can drown in sewer water for all I care...", "ZELDA I'LL BE YOUR HERO", "And I'm right!", "Can't you see that Chun Lee is best waifu?!", "But people who play chess are geniuses. Heh.", "And I will appreciated this life forever :D"]

  Post.create!(title: titles.sample, body: bodies.sample, user_id: user.id)
end

games = users.each do |user|
  Game.create!(name: Faker::Zelda.game, platform: "Nintendo", esrb_rating: "E", genre: "Adventure", score: 8, user_id: user.id)
end

post_comments = posts.each do |post|
  comments = ["Nice post!", "You are so right!", "WRONG kek", "LOL how dumb", "I can't believe how mindblowing your post is", "Moron", "Great input, brotha!", "nerd lol such nerd", "good on ya", "oy m8 i r8 this 8/8", "stupendous! my favorite word!", "coooooool"]
  PostComment.create!(comment: comments.sample, post_id: post.id, user_id: users.first.id)
end

game_comments = games.each do |game|
  comments = ["Insightful", "Darn right, preach", "So smart, man, so smart", "You are all fools", "If I could offer my two cents...", "dank memes", "this game is on point", "this game is for doogies...whatever that is", "poobrain!", "you sir, are the best", "thank you for adding this game", "awesome game", "why, why u add this game..."]
  GameComment.create!(comment: comments.sample, game_id: game.id, user_id: users.first.id)
end
