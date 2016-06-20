# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Categories
scary = Category.create(name: "Scary")
romance = Category.create(name: "Romance")
fantasy = Category.create(name: "Fantasy")
syfy = Category.create(name: "SyFy")
book = Category.create(name: "Based on Books")
serie = Category.create(name: "Based on TV Shows")
movie = Category.create(name: "Based on Movies")
people = Category.create(name: "About Real People")
wtf = Category.create(name: "WTF")
fml = Category.create(name: "FML")

#Users
user = User.create(email: "kduarte@mail.com", password: "12345678", name: "Katia Duarte")

30.times do
   Story.create(body: "New story!", user_id: 1, category_id: rand(1..10))
end
