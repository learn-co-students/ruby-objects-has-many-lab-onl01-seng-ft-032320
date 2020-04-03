class Song
  attr_accessor :artist, :name
    @@all = []
    
  def save
    @@all << self
  end
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end 
  
  def artist=(artist)
    @artist = artist
     artist.add_song(self)
  end

  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end

end 