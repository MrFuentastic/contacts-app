# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   contact = Contact.new(
#                         name: first_name + last_name,
#                         phone_number: Faker::PhoneNumber.phone_number,
#                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                         address: Faker::Address.street_address,
#                         )

#   contact.save
# end

Group.create!(name: "Friends")
Group.create!(name: "Family")
Group.create!(name: "Ignore")
Group.create!(name: "Chicago")
Group.create!(name: "Tucson")
Group.create!(name: "Business")
Group.create!(name: "New York")


ContactGroup.create!(contact_id: 2, group_id: 1)
ContactGroup.create!(contact_id: 2, group_id: 3)
ContactGroup.create!(contact_id: 1, group_id: 1)
ContactGroup.create!(contact_id: 1, group_id: 7)
ContactGroup.create!(contact_id: 5, group_id: 6)
ContactGroup.create!(contact_id: 5, group_id: 7)


