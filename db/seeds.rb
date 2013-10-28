# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

user1 = User.create(user_name: "Mike", password: "password")
user2 = User.create(user_name: "Elizabeth", password: Faker::Lorem.word)
user3 = User.create(user_name: "Bob", password: Faker::Lorem.word)





post1 = Post.create(title: "This is a cool website", body: "", url: "www.cnn.com", user_id: 1)
post2 = Post.create(title: "Yayyyyyyyyyyyyyyyyy", body: "Yayyyy", url: "www.google.com", user_id: 2)
post3 = Post.create(title: "I am Bob", body: "Bobbbbbb", url:"www.facebook.com", user_id: 3)








post1.comments << Comment.create(body: "sux!", user_id: 1)
post1.comments << Comment.create(body: "very sux!", user_id: 1)
post2.comments << Comment.create(body: "Coooll!", user_id: 2)
post2.comments << Comment.create(body: "very Coooll!", user_id: 2)
post3.comments << Comment.create(body: "Hacknews?!", user_id: 3)
post3.comments << Comment.create(body: "very Hacknews?!", user_id: 3)
