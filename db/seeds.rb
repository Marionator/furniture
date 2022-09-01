require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
Booking.destroy_all
Item.destroy_all
User.destroy_all

user1 = User.create!(email: "user1@test.com", password: "123456", first_name: "user")
user2 = User.create!(email: "user2@test.com", password: "123456", first_name: "user")
user3 = User.create!(email: "user3@test.com", password: "123456", first_name: "user")
user4 = User.create!(email: "user4@test.com", password: "123456", first_name: "user")
user5 = User.create!(email: "user5@test.com", password: "123456", first_name: "user")
user6 = User.create!(email: "user6@test.com", password: "123456", first_name: "user")

photo1 = URI.open("https://res.cloudinary.com/dqydndvhv/image/upload/v1661951595/myjbu39aqrgmsop3un9d.jpg")
item1 = Item.create(user_id: 2, name: "Cute table from 1950s", color: "Pink", category: "Table", shipping: "delivery to the renter", price: 53, description: "wonderful bed")
item1.photo.attach(io: photo1, filename: "table.jpg", content_type: "image/jpg")
item1.save

photo2 = URI.open("https://images.unsplash.com/photo-1599697686548-d39f7c80174c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80")
item2 = Item.create(user_id: 1, name: "Ugly armchair from France", color: "Yellow", category: "Armchair", shipping: "collection from the owner", price: 13, description: "wonderful armchair")
item2.photo.attach(io: photo2, filename: "armchair.jpg", content_type: "image/jpg")
item2.save

photo3 = URI.open("https://images.unsplash.com/photo-1602990721338-9cbb5b983c4d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80")
item3 = Item.create(user_id: 2, name: "Bookcase from IKEA", color: "White", category: "Bookcase", shipping: "delivery to the renter", price: 45, description: "wonderful bookcase")
item3.photo.attach(io: photo3, filename: "armchair.jpg", content_type: "image/jpg")
item3.save

photo4 = URI.open("https://images.unsplash.com/photo-1603913996638-c01100417b4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")
item4 = Item.create(user_id: 2, name: "Luxury carpet from Iran", color: "Green", category: "Carpet", shipping: "delivery to the renter", price: 59, description: "wonderful carpet")
item4.photo.attach(io: photo4, filename: "armchair.jpg", content_type: "image/jpg")
item4.save

photo5 = URI.open("https://images.unsplash.com/photo-1581428982868-e410dd047a90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")
item5 = Item.create(user_id: 4, name: "Beautiful coffee table", color: "Black", category: "Table", shipping: "collection from the owner", price: 155, description: "isdhfhsdfu")
item5.photo.attach(io: photo5, filename: "armchair.jpg", content_type: "image/jpg")
item5.save

photo6 = URI.open("https://images.unsplash.com/photo-1540809799-5da9372c3f64?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1024&q=80")
item6 = Item.create(user_id: 1, name: "Wooden stool", color: "Brown", category: "Chair", shipping: "flexible", price: 27, description: "sdfsdfsdfsdf")
item6.photo.attach(io: photo6, filename: "armchair.jpg", content_type: "image/jpg")
item6.save

photo7 = URI.open("https://images.unsplash.com/photo-1611967164521-abae8fba4668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80")
item7 = Item.create(user_id: 3, name: "Chairs x4", color: "Light wood", category: "Chair", shipping: "collection from the owner", price: 35, description: "sdfdsfsdfdsfd")
item7.photo.attach(io: photo7, filename: "armchair.jpg", content_type: "image/jpg")
item7.save

photo8 = URI.open("https://images.unsplash.com/photo-1586122251145-3eb8327766e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80")
item8 = Item.create(user_id: 5, name: "Console table for entryway", color: "Gold", category: "Table", shipping: "flexible", price: 95, description: "sdfsdfsdfsdf")
item8.photo.attach(io: photo8, filename: "armchair.jpg", content_type: "image/jpg")
item8.save

photo9 = URI.open("https://images.unsplash.com/photo-1605797063353-4cbcb6027f2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=618&q=80")
item9 = Item.create(user_id: 2, name: "Chesterfield faux-leather sofa", color: "Orange", category: "Sofa", shipping: "delivery to the renter", price: 56, description: "sfsfsfddfs")
item9.photo.attach(io: photo9, filename: "armchair.jpg", content_type: "image/jpg")
item9.save

photo10 = URI.open("https://images.unsplash.com/photo-1583845112239-97ef1341b271?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")
item10 = Item.create(user_id: 2, name: "Dining table", color: "Purple", category: "Table", shipping: "collection from the owner", price: 50, description: "sdfsdfsdf")
item10.photo.attach(io: photo10, filename: "armchair.jpg", content_type: "image/jpg")
item10.save

Booking.create!(user: user1, item: item1)
Booking.create!(user: user1, item: item3)
Booking.create!(user: user2, item: item2)
Booking.create!(user: user3, item: item4)
Booking.create!(user: user1, item: item7)
Booking.create!(user: user1, item: item5)
