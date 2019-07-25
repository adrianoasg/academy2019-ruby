require 'sinatra'
require 'mongoid'

require_relative 'models/post'

Mongoid.load!("mongoid.yml", Sinatra::Base.environment)

set :bind, '0.0.0.0'

get '/' do
  Post.create(author: "EU MESMO", description: "TESTE")
  Post.all.to_json
end