class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []
  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    @artist.songs << self 
  end


  def self.all
    @@all
  end

  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
end
