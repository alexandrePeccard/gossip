# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |index|
	users = User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: index)
	gossips = Mygossip.create!(title: Faker::Name.name, content: Faker::Lorem.sentence, user_id: index + 1)
	cities = City.create!(name: Faker::Address.city, postal_code: Faker::Address.postcode)
	# comments = Comment.create!(content: Faker::Lorem.sentence, mygossip_id: index + 1)
	# commentss = Comment.create!(content: Faker::Lorem.sentence, mygossip_id: 0, original_comment_id: index + 1)
	tags = Tag.create!(title: Faker::Music.instrument)
	likes = Like.create(user_id: index + 1, mygossip_id: index + 1)
end
count = User.all.size
User.all.each do |user|
	if user.id + 1 <= count - 1
		Privatemessage.create!(sender: user, recipient: User.find(user.id + 1), content: Faker::Lorem.sentence)
	end
end