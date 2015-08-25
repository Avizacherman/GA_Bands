# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Venue.create([{name: "The Pitz", city: "Brooklyn", state: "NY"},{name: "The Mittz", city: "Chicago", state: "NY"},{name: "The Nipz", city: "Pasedena", state: "CA"}])
Event.create([{date: "May 4th, 2014", venue_id: 1, band_id: 1},{date: "Jan 4th, 2014", venue_id: 1, band_id: 2}])
Band.create([{name: "Voltron, The", genre: "8-Bit metal Rock", explicit_lyrics: true},{name: "Smurffs, The", genre: "8-Bit Rap", explicit_lyrics: true}])
