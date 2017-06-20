# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(name: "thalia",
			email: "example@gmail.com",
			password: "password")

u2 = User.create!(name: "ethan",
			email: "example-2@gmail.com",
			password: "password")

u3= User.create!(name: "jin",
			email: "example-3@gmail.com",
			password: "password")
u4 = User.create!(name: "taehyung",
			email: "example-4@gmail.com",
			password: "password")

event = u1.events.create!(name: "Raise Cancer Awareness",
						 place: "Liberty state park",
						 date: "August 25th 2017".to_date)
event.attendees << u2
event.attendees << u3
event.attendees << u4

e = u2.events.create!(name: "Hello Kitty convention",
				 place: "Bryant Park",
				 date: "July 20th 2017".to_date)
e.attendees << u1
e.attendees << u3
e.attendees << u4

event3 = u3.events.create!(name: "Hackathon",
						   place: "New York",
						   date: "November 13th 2016".to_date)
event3.attendees << u1
event3.attendees << u2
event3.attendees << u4