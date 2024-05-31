# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'open-uri'

puts 'Destroying all existing records to start from a clean state'
Booking.destroy_all
Prop.destroy_all
User.destroy_all

puts 'Creating 5 users'
@propper_gary = User.create!(username: "PropperGary123", email: "ppgary@example.com", password: "password")
@kinophile = User.create!(username: "kinophile", email: "kino@example.com", password: "tarkovismyidol")
@weeb215 = User.create!(username: "weeb215", email: "weeb@example.com", password: "iloveanime")
@jester_john = User.create!(username: "Jester_John", email: "johnjester4@example.com", password: "lololol")
@jjwahl = User.create!(username: "jjwahl", email: "jonas@example.com", password: "password")

puts 'Creating 10 movie props'
@prop1 = Prop.create!(name: "Inception Totem", price: 100, category: "accessories", description: " Rent the iconic Inception totem - a dreamer's essential artifact perfect condition!", user: @jester_john)
@prop1.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909246/vqzvromartukeansyfmt.jpg'), filename: 'inception.jpg')
@prop2 = Prop.create!(name: "Harry Potter Wand", price: 1000, category: "weapons", description: "Rent this authentic Harry Potter wand in great condition. Recall the magic within! Reserve now!", user: @propper_gary)
@prop2.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909246/ddqtcku5tv40awmse05n.webp'), filename: 'iharrypotter.jpg')
@prop3 = Prop.create!(name: "Guts' Giant Sword", price: 900, category: "weapons", description: "Rent the legendary Demon Slayer sword, flawless condition, unleash your power!", user: @weeb215)
@prop3.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909246/ykch9konb7ppyqopjri6.jpg'), filename: 'berserk.jpg')
@prop4 = Prop.create!(name: "The One Ring", price: 10000, category: "accessories", description: "Rent the iconic Ring from LOTR: pristine, with mystic nostalgia!", user: @propper_gary)
@prop4.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909246/i6kudom6yhedhctkem3u.webp'), filename: 'lotr.jpg')
@prop5 = Prop.create!(name: "Batmobile", price: 10000, category: "vehicles", description: "Rent the iconic Batman car, pristine condition, unleash your inner hero!", user: @propper_gary)
@prop5.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/egggwgu0vr2lkkeibstb.webp'), filename: 'batman.jpg')
@prop6 = Prop.create!(name: "Coop's Damn Good Cup of Coffee", price: 11, category: "other", description: "cooper cup perfect condition brand new used just like in the movie!", user: @jjwahl)
@prop6.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/lk03niaglnh1mv9krvfe.jpg'), filename: 'theowlsarenotwhattheyseem.jpg')
@prop7 = Prop.create!(name: "Pulp Fiction Briefcase", price: 19, category: "accessories", description: "Rent Jules's iconic briefcase: sleek, mysterious, with plenty memories a few bumps bit its jules what do you expect!", user: @kinophile)
@prop7.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/rpmeqkosbwtnbhjtzfid.jpg'), filename: 'quarterpounderwcheese.jpg')
@prop8 = Prop.create!(name: "Fight Club Soap", price: 1, category: "other", description: "Tyler's soap: rugged, edgy, with your rebellion memories!", user: @jester_john)
@prop8.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/v3zkf1tqnie8mvh8up8j.png'), filename: 'fightclub.jpg')
@prop9 = Prop.create!(name: "Paterson's Notebook", price: 10, category: "other", description: "Rent a piece of Project Mayhem history: Peterson's worn notebook its brand new!", user: @jjwahl)
@prop9.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/owonjmkpqjvsskrysb6d.jpg'), filename: 'paterson.jpg')
@prop10 = Prop.create!(name: "Tarkowsky's Weird Floor", price: 2, category: "other", description: "Rent Tarkowski's legendary floor in perfect condition. Authentic and powerful. Unleash its magic!", user: @kinophile)
@prop10.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1716909245/yfaxxuitmkcr8ylmrvgh.jpg'), filename: 'tarkowsky.jpg')
@prop11 = Prop.create!(name: "Genies Lamp", price: 40, category: "other", description: " Rent this iconic Genie's Lamp from Aladdin! Perfect for themed parties or displays, this detailed replica is sure to spark imaginations and bring a touch of magic to any event.", user: @weeb215)
@prop11.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1717166815/pm7otpgyurgrlgf3y38m.jpg'), filename: 'genielamp.jpg')
@prop12 = Prop.create!(name: "Magic Mirror", price: 600, category: "accessories", description: "Add a touch of enchantment with the Magic Mirror from Snow White and the Seven Dwarfs! This ornate, speaking mirror replica is ideal for themed decor or interactive experiences, captivating guests with its mystical charm.", user: @propper_gary )
@prop12.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1717166815/jcb8pefdgdo5cx9ydlpe.jpg'), filename: 'MagicMirror.jpg')
@prop13 = Prop.create!(name: "Cinderellas Glass Slipper", price: 100, category: "clothing", description: "Complete your fairy tale fantasy with Cinderella's Glass Slipper! This stunning, transparent shoe is a must-have for costume parties, weddings, or displays, ensuring a magical touch to any occasion.", user: @kinophile)
@prop13.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1717166816/wkwehro1yrwn2xnm4ich.png'), filename: 'Cinderella-shoes.jpg')
@prop14 = Prop.create!(name: "Mary Poppins' Umbrella", price: 50, category: "accessories", description: "Elevate your costume or event with Mary Poppins' iconic Umbrella! Featuring a parrot-head handle, this enchanting prop is perfect for fans of the beloved nanny and adds a whimsical flair to any gathering.", user: @jjwahl)
@prop14.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1717166815/qjkwic7nv4zzf1fqdm4p.jpg'), filename: 'Marys-Umbrella.jpg')
@prop15 = Prop.create!(name: "Elsa's Ice Dress", price: 30, category: "clothing", description: "Transform into the Snow Queen with Elsa's Ice Dress from Frozen! This shimmering, ice-blue gown is ideal for cosplay, parties, or special events, bringing the magic of Arendelle to life with every twirl.", user: @jester_john)
@prop15.photo.attach(io: URI.open('https://res.cloudinary.com/djbnwksnu/image/upload/v1717166815/huif0anzm3mm2z5thnmd.jpg'), filename: 'cinderella-dress.jpg')
puts 'Done!'
