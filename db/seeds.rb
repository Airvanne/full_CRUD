# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   
require 'faker'

10.times do
users = User.create(name: Faker::Name.first_name, email: Faker::Internet.email, password: Faker::Name.last_name)

end
users = User.create(name: "a", email: "a", password: "a")


10.times do
gossips = Gossip.create(user_id: Faker::Number.between(1,10), 
	title: Faker::Coffee.blend_name, 
	content: Faker::Coffee.notes)
end