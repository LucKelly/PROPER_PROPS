# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Destroy all existing records to start from a clean state
Prop.destroy_all
User.destroy_all

# Create a new user
@batman = User.create!(username: "test1", email: "test1@test.com", password: '123456')

# Create a new prop
@batmobile = Prop.create!(name: "batmobile", user: @batman)

puts 'Done!'
