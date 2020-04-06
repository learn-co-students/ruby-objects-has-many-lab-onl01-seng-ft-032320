class Author 
  
  attr_accessor :name 
  
  @@post_count = 0 
  
  def initialize (name)
    @name = name 
    @posts = []
  end
  
  def posts 
    Post.all
  end
  
  def add_post (argument)
    @posts << argument
    argument.author = self 
    
    @@post_count += 1
  end
  
  def add_post_by_title (argument)
    new_post = Post.new(argument)
    @posts << new_post
    new_post.author = self 
    
    @@post_count += 1 
  end
  
  def self.post_count
    @@post_count + 1 
  end
  
end