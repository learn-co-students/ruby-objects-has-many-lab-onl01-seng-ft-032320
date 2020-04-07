require 'pry'

class Author
  attr_accessor :name, :posts
  
  @@total_posts = 1
  
  def initialize(name) 
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@total_posts += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@total_posts += 1
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def self.post_count
    @@total_posts
  end
  
end