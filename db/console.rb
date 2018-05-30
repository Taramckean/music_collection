require("pry")
require_relative("../models/album")
require_relative("../models/artist")

artist1 = Artist.new({
  'name' => 'Sean Paul'
  })

artist1.save()

album1 = Album.new({
  'title' => 'Dutty Rock',
  'genre' => 'dancehall',
  'artist_id' => artist1.id
  })

album1.save()

binding.pry
nil
