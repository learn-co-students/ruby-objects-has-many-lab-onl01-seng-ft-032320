class Post 
    attr_accessor :author, :title
    @@all = []
    
    def initialize(title)
        @title = title 
        save 
    end 

    def save
        @@all << self
    end 

    def author_name 
        self.author ? self.author.name : nil 
    end 

    def self.all 
        @@all 
    end 

end 