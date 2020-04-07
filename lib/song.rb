require "pry"

class Song # a song must have an artist 
 attr_accessor :artist, :name 
 
 @@all = []
 
 def initialize(name)
   @name = name 
   @@all << self 
 end 
 
 def self.all 
   @@all 
 end 
 
 def artist_name
  if self.artist # if the instance of an artist exist return true and enter the if statement
   self.artist.name
  else 
    nil
  end 
 end 
end 

