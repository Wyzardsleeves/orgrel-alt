# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Heroku said no to Faker so naw
#require 'faker'
#User.create! :name => 'Stinky', :parent => User.create!(:name => 'Squeeky')


User.create!(
  first_name: "Dade",
  last_name: "Murphy",
  title: "CEO",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(2, true)
)

User.create!(
  first_name: "Kate",
  last_name: "Libby",
  title: "CTO",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(1, true)
)

User.create!(
  first_name: "Edward",
  last_name: "Vedder",
  title: "CFO",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(2, true)
)

User.create!(
  first_name: "Margo",
  last_name: "Wallace",
  title: "VP of Public Relations",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(2, true)
)

User.create!(
  first_name: "Eugene",
  last_name: "Belfort",
  title: "VP of Engineering",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(2, true)
)

User.create!(
  first_name: "Richard",
  last_name: "Gill",
  title: "Public Relations Manager",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(3, true)
)

User.create!(
  first_name: "Emmanuel",
  last_name: "Goldstein",
  title: "Lead Software Engineer",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(2, true)
)

User.create!(
  first_name: "Paul",
  last_name: "Cook",
  title: "Software Engineer",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(1, true)
)

User.create!(
  first_name: "Joey",
  last_name: "Pardella",
  title: "Junior Software Engineer",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(2, true)
)

User.create!(
  first_name: "Agnes",
  last_name: "Pardella",
  title: "Project Manager",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(1, true)
)

User.create!(
  first_name: "Ramon",
  last_name: "Sanchez",
  title: "Software Engineer",
  description: "Description for production since heroku doesn't like Faker"#Faker::Lorem.paragraph(3, true)
)

puts "Seed completed!"
puts "#{User.count} users created!"
