class Post
attr_accessor :title, :author, :name

   @@all= []
  def initialize(title)
     @title=title
     @@all << self
     @name = name
  end

  def self.all
     @@all
  end
  def author_name
     if author
        author.name 
     else
        nil
     end

 end
end
