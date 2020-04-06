class Post
  attr_accessor :name, :title
  attr_reader :author
  @@all = []
  
  def initialize(title)
    @title = title 
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def author= (name)
    @author = name
    @author.posts << self
  end
  
  def author_name
    @author.name if !!@author
  end
end