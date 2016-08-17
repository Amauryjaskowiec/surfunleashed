# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy.all
users_attributes =
[
  {
  id: 1,
  email: "momo@mchin.com",
  # created_at: "2016-08-16 15:10:00",
  # updated_at: "2016-08-16 15:10:00",
  name: "Michael",
  surname: "miki",
  phone_number: nil
  },

  {
  id: 2,
  email: "astro@robot.com",
  # created_at: "2016-08-16 15:10:00",
  # updated_at: "2016-08-16 15:10:00",
  name: "Amaury",
  surname: "Maumau",
  phone_number: "0768756532"
  },

  {
  id: 3,
  email: "goodwaves@surfers.com",
  # created_at: "2016-08-16 15:10:00",
  # updated_at: "2016-08-16 15:10:00",
  name: "Josao",
  surname: "jojo",
  phone_number: "0768549732"
  }
]

users_attributes.each {|params| User.create!(params)}


Board.destroy.all
boards_attributes =[

  {
  name: "JS",
  category: "shortboard",
  size: 7,
  price_per_day: 23,
  description: 0.0,
  text: nil,
  address: "23 rue lamartine",
  city: "Lacanau",
  country: "France",
  automatic_reservation: true,
  user_id: 1,
  # created_at: Tue, 16 Aug 2016 15:16:59 UTC +00:00,
  # updated_at: Tue, 16 Aug 2016 15:16:59 UTC +00:00>
  },


  {
  name: "Long",
  category: "longboard",
  size: 7,
  price_per_day: 23,
  description: 0.0,
  text: nil,
  address: "47 chemin petit jean",
  city: "Hossegor",
  country: "France",
  automatic_reservation: false,
  user_id: 2,
  # created_at: Tue, 16 Aug 2016 15:16:59 UTC +00:00,
  # updated_at: Tue, 16 Aug 2016 15:16:59 UTC +00:00>
  },

  {
  name: "Curve",
  category: "shortboard",
  size: 7,
  price_per_day: 23,
  description: 0.0,
  text: nil,
  address: "3 place du commerce",
  city: "Biarritz",
  country: "France",
  automatic_reservation: true,
  user_id: 3,
  # created_at: Tue, 16 Aug 2016 15:16:59 UTC +00:00,
  # updated_at: Tue, 16 Aug 2016 15:16:59 UTC +00:00>
  }
]

boards_attributes.each {|params| Restaurant.create!(params)}
