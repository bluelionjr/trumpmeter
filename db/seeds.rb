# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  email: "bluelionjr@gmail.com",
  password: "helloworld",
  password_confirmation: "helloworld",
  state: "Florida"
)

User.create!(
  email: "jrmitchelllist@gmail.com",
  password: "helloworld",
  password_confirmation: "helloworld",
  state: "Ohio"
)

User.create!(
  email: "pokeygray@yahoo.com",
  password: "helloworld",
  password_confirmation: "helloworld",
  state: "Ohio"
)

User.create!(
  email: "bluelion@gmail.com",
  password: "helloworld",
  password_confirmation: "helloworld",
  state: "South Dakota"
)

User.create!(
  email: "jrmitchell@gmail.com",
  password: "helloworld",
  password_confirmation: "helloworld",
  state: "North Carolina"
)

User.create!(
  email: "pokey@yahoo.com",
  password: "helloworld",
  password_confirmation: "helloworld",
  state: "Michigan"
)

Poll.create!(
  vote: "approve",
  user_id: 1
)

Poll.create!(
  vote: "disapprove",
  user_id: 2
)

Poll.create!(
  vote: "novote",
  user_id: 3
)

Poll.create!(
  vote: "approve",
  user_id: 4
)

Poll.create!(
  vote: "disapprove",
  user_id: 5
)

Poll.create!(
  vote: "approve",
  user_id: 6
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Poll.count} polls created"
