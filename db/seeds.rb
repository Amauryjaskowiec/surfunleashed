# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


shortboard = Category.create(name: "Shortboard")
longboard = Category.create(name: "Longboard")
funboard = Category.create(name: "Funboard")
hybrid = Category.create(name: "Hybrid")
fish = Category.create(name: "Fish")
gun = Category.create(name: "Gun")
other = Category.create(name: "Other")

User.destroy_all
michael = User.create(email: "michael@mchin.com", name: "Michael", surname: "miki", phone_number: "0768756532", password: "blablabla")
amaury = User.create(email: "momo@mchin.com", name: "Amaury", surname: "momo", phone_number: "0768754545", password: "blublublu")
tonton = User.create(email: "tonton@mchin.com", name: "tonton", surname: "tata", phone_number: "0768750202", password: "bliblibli")

Board.destroy_all
js = Board.create(name: "JS", category: shortboard, size: 6, price_per_day: 23, description: "epoxy", text: "Bonne galette", address: "23 rue lamartine", city: "Lacanau", country: "France", automatic_reservation: true, user: amaury )
mauricecole = Board.create(name: "mauricecole", category: hybrid, size: 7, price_per_day: 30, description: "Bonne planche niveau intermediaire", text: "du fun du fun", address: "12 rue lagrange", city: "biarritz", country: "France", automatic_reservation: true, user: michael )
uwl = Board.create(name: "uwl", category: longboard, size: 9, price_per_day: 35, description: "Bonne glisse et rame nikel", text: "gros noserider", address: "40 residence triton", city: "seignosse", country: "France", automatic_reservation: false, user: tonton )

# Reservation.destroy_all

# resa1 = Reservation.create(start_date: Date.today, end_date: Date.today + 6.day, surfer:)

