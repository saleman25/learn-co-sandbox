require "pry"
require 'net/http'
require 'open-uri'
require 'json'
require 'httparty'

class API
  
  @@key = "0c6516a939311eb7559a5339e3009c30" 
  
  
  def popular_movie_url 
  url = "https://api.themoviedb.org/3/movie/popular?api_key=#{@@key}&language=en-US&page=1"
  response = HTTParty.get(url)
  response["results"].each do |movie|
    id = movie["id"]
    title = movie["title"]
    Movie.new(title, id)
  end 
end 
  
  def pop_movie_details(movie)
   movie_id = movie 
   url = "https://api.themoviedb.org/3/movie/#{movie_id}?api_key=#{@@key}&language=en-US"
   response = HTTParty.get(url)
   overview = response["overview"]
   
   
 end 
  
  def popular_tv_show_url 
    url = "https://api.themoviedb.org/3/tv/popular?api_key=#{@@key}&language=en-US&page=1"
    response = HTTParty.get(url)
    response["results"].each do |show|
    id = show["id"]
    title = show["name"]
    TvShow.new(title, id)
  end 
end

  def pop_show_details(show)
   tv_id = show 
   url = "https://api.themoviedb.org/3/tv/#{tv_id}?api_key=#{@@key}&language=en-US"
   response = HTTParty.get(url)
   overview = response["overview"]
   
  end
end 