require 'bundler/setup'
require 'sinatra/base'
require 'json'

class Api < Sinatra::Base

  file = File.read(Dir.pwd + "/data.json")
  json = JSON.parse(file)

	get '/hello' do
		'Hello world!'
	end

	get '/movies' do
    json
  end

  get '/movies/:movieId' do |movieId|
    json[movies][movieId - 1]
  end

end
