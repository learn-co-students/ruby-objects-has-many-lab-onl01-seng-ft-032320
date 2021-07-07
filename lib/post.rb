class Post 
  attr_accessor :name, :author
  @@all = []
  
  def initialize(name)
    @name = name
    @author = author 
    save
  end 
  
  def save
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def title
    title = self.name
  end 
  
  def author_name
    if self.author == nil 
      nil 
    else
      self.author.name
    end 
  end 
end 