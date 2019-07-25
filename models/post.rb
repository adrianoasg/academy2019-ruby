class Post
  def initialize(attributes = {})
    self.title = attributes[:title]
    self.picture = attributes[:picture]
    self.description = attributes[:description]
    self.author = attributes[:author]
    self.likes = attributes[:likes] || 0
  end

  attr_accessor :title, :picture, :description, :author, :likes

  def to_s
    texto = []
    texto << "TITULO: #{title}" unless title.nil?
    texto << "LIKES: #{likes}" if likes > 0
    texto.join(" | ")
  end
end