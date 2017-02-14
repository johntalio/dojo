# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Post.delete_all
Game.delete_all

users = User.create([{username: 'toad1', email: 'toad@gmail.com', password: 'abc123'}, {username: 'frog2', email: 'frog@gmail.com', password: 'abc123'}, {username: 'lizard3', email: 'lizard@gmail.com', password: 'abc123'}])
posts = Post.create([{title: 'Hey! My first post!', body: 'Wow, this is so amazing!'}, {title: 'Dude....so awesome', body: 'Holy moly, man!'}, {title: 'This game is so crazy', body: 'Crazy crazy crazy crazy crazy'}, {title: 'I hated this game.', body: 'This game sucks a big, big bag of doodoo'}])
games = Game.create([{name: 'Big Bad Baddies', platform: 'Nintendo 64', esrb_rating: 'M', genre: 'Action', score: 8}, {name: "Pile 'Em Up", platform: 'Playstation', esrb_rating: 'E', genre: 'Puzzle', score: 5}])
