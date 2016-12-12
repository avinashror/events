# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
Org.destroy_all

orgs = Org.create! ([{name: "Org1"},{name: "Org2"},{name: "Org3"}] )
o1 = orgs.first
o2 = orgs.last
e1 = Event.create(org: o1, hostname: "host1", timestamp: 2.days.ago, string: "Str1")
e2 = Event.create(org: o1, hostname: "host1", timestamp: 1.days.ago, string: "Str2")
e3 = Event.create(org: o1, hostname: "host2", timestamp: Time.now, string: "Str3")
e4 = Event.create(org: o2, hostname: "host3", timestamp: Time.now, string: "Str4")