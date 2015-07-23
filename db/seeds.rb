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
Place.create name: "Waterfront", location: "Waterfront", description: "Massive shopping area", rating: 7, must_see: false

place1 = Place.first
place2 = Place.second

Comment.delete_all

Comment.create commenter: "Brian", text: "Bring me biltong", place: place1
Comment.create commenter: "Erica", text: "Yay Cape Town", place: place2
Comment.create commenter: "Ian", text: "Howzit", place: place1

