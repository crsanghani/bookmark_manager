require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String
  property :tags, String
  property :created_at, DateTime
end

DataMapper.setup(:default, 'postgres:///bookmark_manager')
DataMapper.finalize
DataMapper.auto_upgrade!