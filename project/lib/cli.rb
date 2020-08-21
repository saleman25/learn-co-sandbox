require 'pry'

class CLI 
  
  attr_accessor :api , :movie , :tvshow
  
  def call 
    start 
  end 
  
  def start 
   input = "" 
   puts "Hi Welcome!" 
   puts "*~*~*~*~*~*"
   sleep(1)
   puts "Are you ready to watch a movie?"
   puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*"
   
   input = gets.strip
   @api = API.new
   if input == "yes"
     sleep(2)
     puts "*~*~*~*~*~*~*~*~*~*~*~"
     puts "Okay! Heres your list!"
     puts "*~*~*~*~*~*~*~*~*~*~*~"
     sleep(1.5)
     @api.popular_movie_url
     list_movies
     overview_message
   elsif input == "no" 
     sleep(1)
     puts ""
     puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
     puts "Sorry can't accept 'no' here."
     puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
     puts ""
     sleep(2)
     start
   elsif input =="exit"
     exit_message 
   else 
     wrong_input
     start 
end 
end 
end 

def list_movies
    Movie.all.each.with_index do |m, i|
      sleep(0.3)
      puts "#{i+1}. #{m.title}. || #{m.id}" 
    end
  end
  
    
  def overview_message
    sleep(1)
    puts ""
    input = "" 
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*"
    puts "For an overview of a movie please enter the corresponding ID number"
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*"
    input = gets.strip 
  end 
  
  def exit_message
    sleep(1)
    puts ""
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*"
    puts "thank you! enjoy your day! bye bye!"
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*"
   end 
  
  def wrong_input
    sleep(2)
    puts ''
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
    puts "Sorry I didn't quite get that, lets try that again."
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
    puts ""
    sleep(3)
  end 
 
 def display_movie
   sleep(1)
   puts "****************************"
   puts "Movie Name: #{movie.title}"
   puts "---------------------------"
   sleep(1)
   puts "Overview: #{movie.overview}"
   puts "---------------------------"
   puts "****************************"
   sleep(1)
 end 
 
 

 
 
 

 