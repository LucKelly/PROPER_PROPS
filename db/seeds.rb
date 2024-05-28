# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts 'Destroying all existing records to start from a clean state'
User.destroy_all
Prop.destroy_all

puts 'Creating 5 users'
@propper_gary = User.create!(username: "PropperGary123", email: "ppgary@example.com", password: "password")
@kinophile = User.create!(username: "kinophile", email: "kino@example.com", password: "tarkovismyidol")
@weeb215 = User.create!(username: "weeb215", email: "weeb@example.com", password: "iloveanime")
@jester_john = User.create!(username: "Jester_John", email: "johnjester4@example.com", password: "lol")
@jjwahl = User.create!(username: "jjwahl", email: "jonas@example.com", password: "password")

puts 'Creating 10 movie props'
@prop1 = Prop.create!(name: "Inception Totem", user: @jester_john)
@prop2 = Prop.create!(name: "Harry Potter Wand", user: @propper_gary)
@prop3 = Prop.create!(name: "Guts' Giant Sword", user: @weeb215)
@prop4 = Prop.create!(name: "The One Ring", user: @propper_gary)
@prop5 = Prop.create!(name: "Batmobile", user: @propper_gary)
@prop6 = Prop.create!(name: "Coop's Damn Good Cup of Coffee", user: @jjwahl)
@prop7 = Prop.create!(name: "Pulp Fiction Briefcase", user: @kinophile)
@prop8 = Prop.create!(name: "Fight Club Soap", user: @jester_john)
@prop9 = Prop.create!(name: "Paterson's Notebook", user: @jjwahl)
@prop10 = Prop.create!(name: "Tarkowsky's Mirror", user: @kinophile)

puts 'Done!'
