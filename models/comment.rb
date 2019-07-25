class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :author, type: String
  field :content, type: String
end