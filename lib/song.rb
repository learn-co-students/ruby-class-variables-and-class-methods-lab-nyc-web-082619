require 'pry'
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
      @@genres.push(genre)
     @@artists.push(artist)
    
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    unique_push(@@genres)
  end
  
  def self.artists
    unique_push(@@artists)
  end

  private 
  def self.unique_push(items)
    items_return = []
    items.each do |item|
      if(!items_return.include?(item))
        items_return.push(item)
      end
    end
    items_return
  end
  
  private
  def self.histogram(items)
    return_hash = {}
    items.each do |item|
        if(!return_hash.include?(item))
            return_hash[item] = 1
        else
            return_hash[item] += 1
        end
    end
    return_hash
  end
  
  def self.genre_count
    histogram(@@genres)
  end
  
  def self.artist_count
    histogram(@@artists)
  end
  
  
end