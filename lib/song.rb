require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all 
  end

  def save
    self.class.all << self
  end
  
  def Song.create
    song = self.new 
    self.all << song 
    song
  end 
  
  def self.new_by_name(string)
    song = self.new
    song.name = string
    song.save
    song
  end

  def self.create_by_name(string)
    song = self.new
    song.name = string
    song.save 
    song
  end
  
  def self.find_by_name(string)
      self.all.find do |str|
        if str.name == string
        str
    end
  end
end

def self.find_or_create_by_name(x)

self.find_by_name(x) || self.create_by_name(x)

# find_by_name(x) ? self.all: create_by_name(x)
# binding.pry
end

def self.alphabetical
  self.all.sort_by {
    |x| x.name
  }
end

# def self.new_from_filename(name)
  
#   new_song = self.new
#   new_song.name = (name.split(" - ")[1].chomp(".mp3"))
#   new_song.artist = (name.split(" - ")[0])
#   new_song
 
# end

# binding.pry
  
  def self.new_from_filename(name)
    song = self.new 
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    song
  end
  
end
