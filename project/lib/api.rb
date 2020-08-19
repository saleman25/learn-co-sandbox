require "pry"
require 'net/http'
require 'open-uri'
require 'json'

class API
  
  attr_accessor :key 
 
  def initalize
   @key = "0c6516a939311eb7559a5339e3009c30" 
  end 
  
  def genre_movie_url 
  url = "https://api.themoviedb.org/3/genre/movie/list?api_key=#{@key}&language=en-US"
  response = Net::HTTP.get(url)
  response["genres"].each do |genre|
    id = genre["id"]
    binding.pry
    name = genre["name"]
    Movie.new(name, id)
  end 
end 
  
   
  
end 