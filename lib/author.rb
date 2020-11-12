class Author

  attr_accessor :name

  @@all_posts = []

  def initialize(name)
    @name = name
    @@all_posts << self
  end

  def self.all
    @@all_posts
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = post.new(title)
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Pont.all.count
  end
end
