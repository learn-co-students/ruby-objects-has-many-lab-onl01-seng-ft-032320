class Author 
  attr_accessor :name

  @@post_count = 1

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    @@post_count
  end
end
