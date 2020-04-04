class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post_obj)
    post_obj.author = self
  end
  
  def add_post_by_title(title)
    post_obj = Post.new(title)
    post_obj.author = self
  end
  
  def self.post_count
    count = 0
    Post.all.collect do |post_obj| 
      if post_obj.author
        count += 1
      end
    end
    count
  end
end