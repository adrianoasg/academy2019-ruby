require_relative 'models/post'

collection = []

for likes in (100..120) do
  collection << Post.new(likes: likes)
end

collection.each do |item|
  puts item
end

# puts collection.map do |item|
#   item.likes
# end

# puts collection.map { |item| item.likes }
# puts collection.map(&:likes)