# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
    13.times do |i|
        item = Item.new
        item.picture.attach(io: File.open(File.join("cat#{i+ 1}.jpg"), filename: 'chat.jpg')
        item.name = "Photo de chat"
        item.price = 100
        item.save
    end
end