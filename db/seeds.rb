require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
Favorite.destroy_all
Booking.destroy_all
Item.destroy_all
User.destroy_all

# USERS

user1 = User.new(email: "user1@test.com", password: "123456", first_name: "Bob")
photo_user1 = URI.open("https://res.cloudinary.com/dpw4sfx8d/image/upload/v1662485633/ReMost/bob_tg0nq6.jpg")
user1.photo.attach(io: photo_user1, filename: 'user1.jpg', content_type: 'image/jpg')
user1.save

user2 = User.new(email: "user2@test.com", password: "123456", first_name: "Jeanne")
photo_user2 = URI.open("https://res.cloudinary.com/dpw4sfx8d/image/upload/v1662485635/ReMost/jeanne_aho5sc.jpg")
user2.photo.attach(io: photo_user2, filename: 'user2.jpg', content_type: 'image/jpg')
user2.save

user3 = User.new(email: "user3@test.com", password: "123456", first_name: "Leah")
photo_user3 = URI.open("https://res.cloudinary.com/dpw4sfx8d/image/upload/v1662485633/ReMost/leah_c8hlhz.jpg")
user3.photo.attach(io: photo_user3, filename: 'user3.jpg', content_type: 'image/jpg')
user3.save

user4 = User.new(email: "user4@test.com", password: "123456", first_name: "Bertrand")
photo_user4 = URI.open("https://res.cloudinary.com/dpw4sfx8d/image/upload/v1663167130/ReMost/bertrand_m1zaqe.jpg")
user4.photo.attach(io: photo_user4, filename: 'user4.jpg', content_type: 'image/jpg')
user4.save

user5 = User.new(email: "user5@test.com", password: "123456", first_name: "Sam")
photo_user5 = URI.open("https://res.cloudinary.com/dpw4sfx8d/image/upload/v1663167129/ReMost/sam_qszf4c.jpg")
user5.photo.attach(io: photo_user5, filename: 'user5.jpg', content_type: 'image/jpg')
user5.save

user6 = User.new(email: "user6@test.com", password: "123456", first_name: "Charlie")
photo_user6 = URI.open("https://res.cloudinary.com/dpw4sfx8d/image/upload/v1663250945/ReMost/charlie_valtn3.jpg")
user6.photo.attach(io: photo_user6, filename: 'user6.jpg', content_type: 'image/jpg')
user6.save

# ITEMS


item1 = Item.new(user: user2, name: "Cute table, hairpin legs", color: "Light wood", category: "Table", shipping: "delivery to the renter", price:7, width: 160, depth: 90, weight: 65, description: "Lovely, lightweight table. No scratches. A bit of a retro look thanks to its yellow legs!")
item1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/1.jpg')), filename: '1.jpg')
item1.save

item2 = Item.new(user: user1, name: "Comfy armchair with wooden legs", color: "Red", category: "Armchair", shipping: "collection from the owner", price: 8, height: 130, width: 70, weight: 70, description: "Just a nice armchair, fabric is in good condition. Comes from a pet-free, smoke-free home. I did fall asleep in it a couple of times :)")
item2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/2.jpg')), filename: '2.jpg')
item2.save

item3 = Item.new(user: user2, name: "Stunning bookcase (mid 1950s)", color: "Light wood", category: "Bookcase", shipping: "delivery to the renter", price: 12, height: 230, width: 100, description: "Large bookcase. Solid mango wood. Will give a sophisticated look to you place! I've got a truck and can deliver/collect for an extra fee (£15/hr). ")
item3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/3.jpg')), filename: '3.jpg')
item3.save

item4 = Item.new(user: user2, name: "Luxury carpet from Iran", color: "Green", category: "Carpet", shipping: "delivery to the renter", price: 4, description: "Love this carpet but it,s too small for my living room. Has been professionally washed. Happy to drop it to your place for a fee (to be discussed!).")
item4.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/4.jpg')), filename: '4.jpg')
item4.save

item5 = Item.new(user: user4, name: "Beautiful wood coffee table", color: "Light wood", category: "Table", shipping: "collection from the owner", price: 15, width: 180, height: 80, description: "Solid wood coffee table, very elegant with its metal blue-ish legs.")
item5.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/5.jpg')), filename: '5.jpg')
item5.save

item6 = Item.new(user: user1, name: "Wooden stools (x2)", color: "Brown", category: "Chair", shipping: "flexible", price: 8, description: "2 mid-century scandi-inspired stools. Elegant style. Immaculate condition.")
item6.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/6.jpg')), filename: '6.jpg')
item6.save

item7 = Item.new(user: user3, name: "Chairs x4", color: "Black", category: "Chair", shipping: "collection from the owner", price: 15, description: "Plain, black dining chairs. Each comes with an attached cushion. One is a bit scrached at the back, but barely noticeable.")
item7.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/7.jpg')), filename: '7.jpg')
item7.save

item8 = Item.new(user: user5, name: "Refurbished console table", color: "Grey", category: "Table", shipping: "flexible", price: 6, description: "Refurbished console table with drawers - rustic style.")
item8.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/8.jpg')), filename: '8.jpg')
item8.save

item9 = Item.new(user: user2, name: "Chesterfield faux-leather sofa", color: "Brown", category: "Sofa", shipping: "delivery to the renter", width: 200, price: 4, description: "Nice and comfy, perfect if you're going for a vintage style (it's been used a lot! faux leather is cracked everywhere). Ideal for an artist's loft.")
item9.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/9.jpg')), filename: '9.jpg')
item9.save

item10 = Item.new(user: user2, name: "Dining table", color: "Light wood", category: "Table", shipping: "collection from the owner", price: 13, description: "Sturdy wooden dining table, barely used. Can discuss lending the 4 matching chairs (extra 15/week).")
item10.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/seeds/10.jpg')), filename: '10.jpg')
item10.save

# BOOKINGS

Booking.create!(user: user3, item: item2, start_date: 'Wed, 23 Nov 2022', end_date: ' Thu, 19 Jan 2023')
