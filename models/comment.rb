class Comment
  attr_accessor :author, :content, :created_at

  def initialize(params = {})
    self.author = params[:author]
    self.content = params[:content]
    self.created_at = Time.new
  end

  def to_s
    "#{author || 'ANONIMO'} comentou: #{content} - às #{created_at}"
  end
end