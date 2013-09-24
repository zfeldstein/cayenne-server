require 'rubygems'
require 'sinatra'
require 'logger'
require 'data_mapper'


DataMapper.setup(:default, "mysql://#{ENV['DB_USER']}:#{ENV['DB_PASS']}@localhost/cayenne_server")
class Roles
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :config_instructions, String
  property :config_interpreter, String
  property :created_at, DateTime
  property :updated_at, DateTime
end



DataMapper.finalize
DataMapper.auto_upgrade!
#Controller

get "/" do
  @roles=Roles.all
  @roles.to_json
end



