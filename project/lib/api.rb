require "pry"
require 'net/http'
require 'open-uri'
require 'json'

class API
  
  URL = "https://developers.themoviedb.org/3/genres/get-movie-list"
 
  def initalize(url)
   URL 
  end 
  
  def url 
  uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json 
  JSON.parse(get_response_body)
  end  
  
end 