# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bands = Band.create!([
  { name: 'Weezer' },
  { name: 'Gramatik' }
])

albums = Album.create([
  { name: 'Pinkerton', band_id: 6, album_type: 'studio' },
  { name: 'Hurley', band_id: 6, album_type: 'studio' }
])

#  album_type :string           not null
#  band_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
