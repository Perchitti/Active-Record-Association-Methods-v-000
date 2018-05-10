class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    song.count
  end

  def artist_count
    self.artist.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    self.artist.all.name
    # return an array of strings containing every musician's name
  end
end
