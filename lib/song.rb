class Song 
  attr_accessor :name, :artist, :genre 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save  
  end 
  
  def self.all
    @@all 
  end 
  
  def save 
    @@all << self
  end 
  
  def artist_name
    self.artist ? self.artist.name : nil 
  end 
end 