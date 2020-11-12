class Author

  @@all_posts = []

  def initialize(name)
    @name = name
    @@all_posts << self
  end

  def self.all
    @@all_posts
  end

  def add_post(post)
    song.artist = self
  end

  def add_post_by_title(name)
    post = post.new(name)
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Pont.all.count
  end
end
