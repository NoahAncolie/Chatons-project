# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
13.times do |i|
    item = Item.new
    item.picture.attach(io: File.open(File.join(Rails.root,"app/assets/images/cat#{i+ 1}.jpg")), filename: 'chat.jpg')
=======
8.times do |i|
    item = Item.new
    item.picture.attach(io: File.open(File.join(Rails.root,"app/assets/images/#{i}.jpg")), filename: 'chat.jpg')
>>>>>>> cats-shop
    item.name = "Photo de chat"
    item.price = 100
    item.save
end