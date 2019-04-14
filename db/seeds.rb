# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Comment.create(user_id: 1, photo_id: 1, content: "this is the first comment that i am going to test")
Comment.create(user_id: 1, photo_id: 2, content: "this is the second comment for the first user")
Comment.create(user_id: 2, photo_id: 3, content: "this is the first comment for the second user test")
Comment.create(user_id: 2, photo_id: 7, content: "this is the second comment that i am going to test")
Comment.create(user_id: 2, photo_id: 1, content: "this is the third comment that i am going to test")
