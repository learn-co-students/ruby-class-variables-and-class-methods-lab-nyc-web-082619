class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@songs = []
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@songs.push(self)
    
    if(!@@genres.include?(genre))
      @@genres.push(genre)
    end

    if(!@@artists.include?(artist))
      @@artists.push(artist)
    end
    
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres
  end
  
  def self.artists
    @@artists
  end


  def self.genre_count
    genres = {}
    @@songs.each do |song|
        if(!genres.include?(song.genre))
            genres[song.genre] = 1
        else
            genres[song.genre] += 1
        end
    end
    genres
  end
  
  def self.artist_count
    artists = {}
    @@songs.each do |song|
        if(!artists.include?(song.artist))
            artists[song.artist] = 1
        else
            artists[song.artist] += 1
        end
    end
    artists
  end
  
  
end