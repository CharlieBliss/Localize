# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



bar = Bar.create(name: "Billy Club", password: "password", pin: 123456, address: "21 candlewood lane", about: "cool club")

artist = Artist.create(name: "CJ Jones", about: "craggedy man", url: "www.artist.com", image_url: "www.google.com/images")

album = Album.create(name: "Cjs Plauys", genre: "Pop Pop", url: "www.album.com", image_url: "Blah Blah Blah", price: 5.00, artist_id: 1)

song = Song.create(name: "Cj Tack 1", url: "BBB", track_number: 1, duration: "5 Mins", artist_id: 1, album_id: 1)

# user = User.create(username: "jimmy joes", password: "password", email: "email@example.com", pin: "123454")

bar.albums << album

artist.albums << album

album.songs << song