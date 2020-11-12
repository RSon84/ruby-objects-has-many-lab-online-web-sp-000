
class Post
  attr_accessor :name, :author

  @@all_posts = []

  def initialize(name)
    @name = name
    @@all_posts << self
  end


  def self.all
    @@all_posts
  end

  def author_name
    author.name if author
  end
end