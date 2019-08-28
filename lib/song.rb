class Song 
  attr_accessor :name, :artist,:genre
  @@count = 0
  @@artists = [] 
  @@genres = []
  def initialize (name, artist, genre)
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
  
  def self.artists
    @@artists.uniq 
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.genre_count
    genreCount = {}
    @@genres.each do |genre|
      if genreCount.key?(genre)
        genreCount[genre] += 1 
      else 
        genreCount[genre] = 1
      end
    end
    genreCount
  end
  
  def self.artist_count
    artistCount = {}
    @@artists.each do |artist|
      if artistCount.key?(artist)
        artistCount[artist] += 1 
      else 
        artistCount[artist] = 1
      end
    end
    artistCount
  end
  
end