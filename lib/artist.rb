require "pry"
class Artist #artist should have many songs 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end 
  
  def songs # return the songs that belong to the instant of this artist
    Song.all.select { |song| song.artist == self} # retuns all the values on the @@all class variable of song and filter base on intance of artist class 
  end 
  #In order to have an artist find all of it's songs, the song class needs to know about all its song instances and a song instance needs to know about the artist class it belongs to.
  
  def add_song(song)
    song.artist = self 
  end 
  
  
  
  def add_song_by_name(name)     #need to provide argument since it will create a new song and the  initialize method requires this argument to create the song.
    song = Song.new(name)    #this is now an object 
    song.artist = self     #setting the instance of the song class setter method artist equals to the instance of the object. This associates both of the objects.
    
  end 
  
  def self.song_count 
    Song.all.length
    
  end 
end 



