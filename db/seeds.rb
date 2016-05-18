# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create(
[
  { name: 'Lageso',
    lat: '52.5264792',
    long: '13.3480563'
  },
  { name: 'BAMF!',
    lat: '52.5542767',
    long: '13.1998871'
  },
  {
    name: 'VHS!',
    lat: '52.5471359',
    long: '13.3610246'
  }
]
)
