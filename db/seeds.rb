# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'open-uri'

puts 'Destroying all existing records to start from a clean state'
Prop.destroy_all
User.destroy_all

puts 'Creating 5 users'
@propper_gary = User.create!(username: "PropperGary123", email: "ppgary@example.com", password: "password")
@kinophile = User.create!(username: "kinophile", email: "kino@example.com", password: "tarkovismyidol")
@weeb215 = User.create!(username: "weeb215", email: "weeb@example.com", password: "iloveanime")
@jester_john = User.create!(username: "Jester_John", email: "johnjester4@example.com", password: "lololol")
@jjwahl = User.create!(username: "jjwahl", email: "jonas@example.com", password: "password")

puts 'Creating 10 movie props'
@prop1 = Prop.create!(name: "Inception Totem", price: 100, category: "accessories", description: "lets come up with something another time!", user: @jester_john)
@prop1.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909246/vqzvromartukeansyfmt.jpg'), filename: 'inception.jpg')
@prop2 = Prop.create!(name: "Harry Potter Wand", price: 1000, category: "weapons", description: "lets come up with something another time!", user: @propper_gary)
@prop2.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909246/ddqtcku5tv40awmse05n.webp'), filename: 'iharrypotter.jpg')
@prop3 = Prop.create!(name: "Guts' Giant Sword", price: 900, category: "weapons", description: "lets come up with something another time!", user: @weeb215)
@prop3.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909246/ykch9konb7ppyqopjri6.jpg'), filename: 'berserk.jpg')
@prop4 = Prop.create!(name: "The One Ring", price: 10000, category: "accessories", description: "lets come up with something another time!", user: @propper_gary)
@prop4.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909246/i6kudom6yhedhctkem3u.webp'), filename: 'lotr.jpg')
@prop5 = Prop.create!(name: "Batmobile", price: 10, category: "vehicles", description: "lets come up with something another time!", user: @propper_gary)
@prop5.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/egggwgu0vr2lkkeibstb.webp'), filename: 'batman.jpg')
@prop6 = Prop.create!(name: "Coop's Damn Good Cup of Coffee", price: 11, category: "other", description: "lets come up with something another time!", user: @jjwahl)
@prop6.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/lk03niaglnh1mv9krvfe.jpg'), filename: 'theowlsarenotwhattheyseem.jpg')
@prop7 = Prop.create!(name: "Pulp Fiction Briefcase", price: 19, category: "accessories", description: "lets come up with something another time!", user: @kinophile)
@prop7.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/rpmeqkosbwtnbhjtzfid.jpg'), filename: 'quarterpounderwcheese.jpg')
@prop8 = Prop.create!(name: "Fight Club Soap", price: 1, category: "other", description: "lets come up with something another time!", user: @jester_john)
@prop8.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/v3zkf1tqnie8mvh8up8j.png'), filename: 'fightclub.jpg')
@prop9 = Prop.create!(name: "Paterson's Notebook", price: 10, category: "other", description: "lets come up with something another time!", user: @jjwahl)
@prop9.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/owonjmkpqjvsskrysb6d.jpg'), filename: 'paterson.jpg')
@prop10 = Prop.create!(name: "Tarkowsky's Weird Floor", price: 2, category: "other", description: "lets come up with something another time!", user: @kinophile)
@prop10.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/yfaxxuitmkcr8ylmrvgh.jpg'), filename: 'tarkowsky.jpg')

puts 'Done!'
