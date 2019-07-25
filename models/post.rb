require_relative 'comment'

class Post
  attr_accessor :title, :picture, :description, :author, :likes,
                :created_at, :comments

  def initialize(attributes = {})
    self.title = attributes[:title]
    self.picture = attributes[:picture]
    self.description = attributes[:description]
    self.author = attributes[:author]
    self.likes = attributes[:likes] || 0
    self.created_at = Time.new
    self.comments = []
  end

  def add_comment(params = {})
    self.comments << Comment.new(params)
  end

  def to_s
    texto = []
    texto << "TITULO: #{title}" unless title.nil?
    texto << "LIKES: #{likes}" if likes > 0
    texto.join(" | ")
  end
end