# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.create(title: "durp", username: "MikeDean", link: "www.google.com", description: "this is a google link, wow!")
post2 = Post.create(title: "durpy", username: "MikeDean", link: "www.yahoo.com", description: "this is a yahoo link, wow!")

Comment.create(username:"John Doe", body:"This post sucks!", post_id: post1.id)
Comment.create(username:"John Doe", body:"This post also sucks!", post_id: post2.id)
Comment.create(username:"Jane Doe", body:"This post is actually not terrible", post_id: post2.id)
