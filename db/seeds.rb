require 'faker'

10.times do
	user = User.new(first_name: Faker::Pokemon.name, last_name: Faker::Zelda.character, password: 'password')
	user.username = Faker::Internet.user_name(user.first_name)
	user.email = Faker::Internet.safe_email(user.first_name)
	user.save
end

30.times do
	post = Post.create(title: Faker::RickAndMorty.location, content: Faker::RickAndMorty.quote, user_id: rand(1..10))
end