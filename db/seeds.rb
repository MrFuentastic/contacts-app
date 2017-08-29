# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contact = Contact.new({
                      name: 'Alex Shin',
                      phone_number: "232334234",
                      email: 'a_shin@geosites.com',
                      address:'893489 fun street',
                      })

contact.save

contact = Contact.new({
                      name: 'Jesus Somethingorother',
                      phone_number: "5555555",
                      email: 'Jmoney@wikileaks.org',
                      address:'123 mlk dr',
                      })

contact.save

contact = Contact.new({
                      name: 'Mr. Bater',
                      phone_number: "232334234",
                      email: 'mbater@google.com',
                      address:'2345 elm str',
                      })

contact.save
