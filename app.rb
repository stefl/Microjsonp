require 'rubygems'
require 'sinatra'
require 'mofo'
require "sinatra/jsonp"
require "json"

set :public, File.dirname(__FILE__) + '/public'

class Microformat
  def as_json(opts={})
    self.to_json(opts)
  end
  
  def to_json(opts={})
    r = {}
    if self.respond_to?(:properties)
      self.properties.each do |p|
        r[p.to_sym] = self.send(p.to_sym)
      end
    else
      r = self.to_s
    end
    {self.class.to_s.to_sym => r}.to_json
  end
end

get '/' do
  haml :home
end

get '/parse' do
  content_type :json
  jsonp Microformat.find params[:url]
end