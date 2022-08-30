# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(email: "user1@test.com", password: "123456")
user2 = User.create(email: "user2@test.com", password: "123456")
user3 = User.create(email: "user3@test.com", password: "123456")
user4 = User.create(email: "user4@test.com", password: "123456")
user5 = User.create(email: "user5@test.com", password: "123456")
user6 = User.create(email: "user6@test.com", password: "123456")


item1 = Item.create(user_id: 2, name: "Cute table from 1950s", color: "pink", category: "table", shipping: "from home", price: 5, description: "wonderful bed")
item2 = Item.create(user_id: 1, name: "Ugly armchair from France", color: "yellow", category: "armchair", shipping: "from home", price: 5, description: "wonderful armchair")
item3 = Item.create(user_id: 2, name: "Bookcase from IKEA", color: "white", category: "bookcase", shipping: "from home", price: 5, description: "wonderful bookcase")
item4 = Item.create(user_id: 2, name: "Luxury carpet from Iran", color: "green", category: "carpet", shipping: "from home", price: 5, description: "wonderful carpet")
item5 = Item.create(user_id: 4, name: "Beautiful coffee table", color: "black", category: "table", shipping: "from home", price: 5, description: "isdhfhsdfu")
item6 = Item.create(user_id: 1, name: "Wooden stool", color: "brown", category: "chair", shipping: "from home", price: 5, description: "sdfsdfsdfsdf")
item7 = Item.create(user_id: 3, name: "Chairs x4", color: "wood", category: "chair", shipping: "from home", price: 5, description: "sdfdsfsdfdsfd")
item8 = Item.create(user_id: 5, name: "Console table for entryway - refurbished", color: "gold", category: "table", shipping: "from home", price: 5, description: "sdfsdfsdfsdf")
item9 = Item.create(user_id: 2, name: "Chesterfield faux-leather sofa", color: "orange", category: "sofa", shipping: "from home", price: 5, description: "sfsfsfddfs")
item10 = Item.create(user_id: 2, name: "Dining table", color: "purple", category: "table", shipping: "from home", price: 5, description: "sdfsdfsdf")

Booking.create(user_id: 1, item_id: 1)
Booking.create(user_id: 1, item_id: 3)
Booking.create(user_id: 2, item_id: 2)
Booking.create(user_id: 3, item_id: 4)
Booking.create(user_id: 1, item_id: 7)
Booking.create(user_id: 1, item_id: 5)
