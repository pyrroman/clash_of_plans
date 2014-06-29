# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Building.create(
  [ { name: 'Canon', level: 8, th_max_level: 10, ultimate_level: 12, upgrade_started_at: Time.now },
    { name: 'Barbarian King', level: 8, th_max_level: 10, ultimate_level: 40, upgrade_started_at: Time.now },
    { name: 'Canon', level: 8, th_max_level: 10, ultimate_level: 40 },
    { name: 'Hidden Tesla', level: 2, th_max_level: 6, ultimate_level: 7 },
    { name: 'Laboratory', level: 6, th_max_level: 6, ultimate_level: 8 },
    { name: 'Dark Elixir Drill', level: 3, th_max_level: 3, ultimate_level: 6 },
    { name: 'Gold Storage', level: 11, th_max_level: 11, ultimate_level: 11 },
  ])
