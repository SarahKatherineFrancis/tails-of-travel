# Create a user
user = User.create!(email: 'mail@mail.com', password: '123123', password_confirmation: '123123', first_name: 'Tom', last_name: 'Smith')
bot = User.create!(email: 'test@test.com', password: '123123', password_confirmation: '123123', first_name: 'Sam', last_name: 'Brown')

# Create some blog posts for the user
Blog.create!(title: "My Trip to the Beach", content: "I had a great time at the beach with my dog. We played in the
  waves and walked along the shore.", location: 'Muizenberg Beach, Cape Town', main_photo: File.open(Rails.root.join('app/assets/images/beach.jpg')), user: user)
Blog.create!(title: "Hiking in the Mountains", content: "My dog and I went on a challenging hike in the mountains. The
  views were amazing!", location: 'Table Mountain', main_photo: File.open(Rails.root.join('app/assets/images/mountain.jpg')), user: user)

# Create some trips
Trip.create!(name: "Dog-Friendly Beaches in California", description: "Explore the best dog-friendly beaches in
  California.", location: "California")
Trip.create!(name: "Hiking with Dogs in Colorado", description: "Discover the best hiking trails in Colorado to explore
  with your dog.", location: "Colorado")

Comment.create!(content: "Great post, thanks for sharing!", user: bot, blog_id: 1)
Comment.create!(content: "I can't wait to go here!", user: bot, blog_id: 2)
