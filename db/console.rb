require("pry")
require_relative("../models/album")
require_relative("../models/artist")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Sean Paul'
  })

artist2 = Artist.new({
  'name' => 'Beenie Man'
  })

artist1.save()
artist2.save()

artists = Artist.all()

album1 = Album.new({
  'title' => 'Dutty Rock',
  'genre' => 'dancehall',
  'artist_id' => artist1.id
  })

  album2 = Album.new({
    'title' => 'King of the Dancehall',
    'genre' => 'dancehall',
    'artist_id' => artist1.id
    })

album1.save()
album2.save()

albums = Album.all()

binding.pry
nil
