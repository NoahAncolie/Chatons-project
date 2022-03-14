# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
    item = Item.new
    download = URI.open("https://resize3.prod.docfr.doc-media.fr/rcrop/1200,902,center-middle/img/var/doctissimo/storage/images/fr/www/animaux/chat/choisir-chat/age-d-adoption-du-chaton/722163-2-fre-FR/age-d-adoption-du-chaton.jpg")
    item.picture.attach(io: download, filenema: "cat.jpg")
    item.name = "Photo de chat"
    item.price = 100
    item.quantity = 3
    item.save
end