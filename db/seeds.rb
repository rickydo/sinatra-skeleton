# add destroy_all to classes so every seed starts fresh without having to drop db
User.destroy_all


User.create!(name: 'rick', email: 'rick@gmail.com', password: 'password', password_confirmation: "password")

