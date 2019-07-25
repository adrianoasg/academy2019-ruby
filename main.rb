require_relative 'models/post'

collection = []

for likes in (100..120) do
  current_post = Post.new(likes: likes)
  current_post.add_comment({ author: "AUTOR #{likes}", content: "MENSAGEM DE EXEMPLO" })

  collection << current_post
end

collection.each do |item|
  puts item

  item.comments.each do |comment|
    puts comment
  end
end

# puts collection.map do |item|
#   item.likes
# end

# puts collection.map { |item| item.likes }
# puts collection.map(&:likes)