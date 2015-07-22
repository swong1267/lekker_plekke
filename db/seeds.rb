# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all

Place.create name: "Once", location: "Cape Town", description: "Hostel", rating: 8, must_see: false
Place.create name: "iX House", location: "Cape Town", description: "Original Campus", rating: 9, must_see: false
Place.create name: "Cape Point", location: "Cape Point", description: "Beach&Rocks", rating: 9, must_see: true

