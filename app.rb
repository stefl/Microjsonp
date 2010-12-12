require 'rubygems'
require 'sinatra'
require 'mofo'
require "sinatra/jsonp"

get '/' do
  haml :home
end

get '/parse' do
  jsonp Microformat.find params[:url]
end