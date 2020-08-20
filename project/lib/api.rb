require "pry"
require 'net/http'
require 'open-uri'
require 'json'
require 'httparty'

class API
  
  @@key = "0c6516a939311eb7559a5339e3009c30" 
  
  attr_accessor :key 
 
  def initialize
   
  end 
  
  def popular_movie_url 
  url = "https://api.themoviedb.org/3/movie/popular?api_key=#{@@key}&language=en-US&page=1"
  response = HTTParty.get(url)
  response["movies"].each do |movie|
    id = movie["id"]
    name = movie["title"]
    overview = movie["overview"]
    Movie.new(name, id, overview)
  end 
end 
  
  def popular_tv_show 
    url = "https://api.themoviedb.org/3/tv/popular?api_key=#{@@key}&language=en-US&page=1"
   binding.pry
    response = HTTParty.get(url)
    response["shows"].each do |show|
    id = show["id"]
    name = show["title"]
    overview = show["overview"]
    TvShow.new(name, id, overview)
  end 
end
  
end 