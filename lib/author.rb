require 'pry'

class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    post.author = self
  end

  def self.post_count
    binding.pry
    @@post_count += @posts.size
  end

end
