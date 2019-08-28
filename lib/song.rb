require "pry"
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    count = {}
    @@genres.uniq {|genre| count[genre] = 0}
    count.each {|genre, num| count[genre] = @@genres.count(genre)}
  end
  
  def self.artist_count
    count = {}
    @@artists.uniq {|artist| count[artist] = 0}
    count.each {|artist, num| count[artist] = @@artists.count(artist)}
  end
end

  