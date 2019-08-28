class Song 
  attr_accessor :name, :artist, :genre, :count 
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre 
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    result = @@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end
  
  def self.artist_count
    result = @@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1 }
  end  
  
end