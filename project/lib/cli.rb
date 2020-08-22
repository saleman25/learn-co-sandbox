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
     puts ""
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
     puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
     puts "I think you're a little confused. If you want to exit please enter 'exit',"
     puts "if not lets start over!"
     puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
     puts ""
     sleep(3)
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
      puts "#{i+1}. #{m.title}. " 
end
end
  
  def overview_message
    sleep(1)
    puts ""
    input = "" 
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
    puts "For an overview of a movie please enter the corresponding movie number,"
    puts "if not enter 'exit' to exit the program."
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
    input = gets.strip 
    if input.to_i.between?(1, 20)
      movie = Movie.all[input.to_i-1]
      @api.pop_movie_details(movie)
      display_movie(movie)
      anything_else
    elsif input == "exit"
      exit_message
    else 
      wrong_input
      overview_message
  end 
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
 
 def display_movie(movie)
   sleep(1)
   puts ""
   puts "****************************"
   puts "Movie Title: #{movie.title}"
   puts "---------------------------"
   sleep(1)
   puts "Overview: #{movie.overview}"
   puts "****************************"
   sleep(1)
 end 
 
 def anything_else
   sleep(1)
   input = ""
   puts ""
   puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
   puts "If you want to see another movie overview enter "
   puts "another corresponding number. If not enter 'exit'."
   puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
   input = gets.strip
   if input.to_i.between?(1, 20)
      movie = Movie.all[input.to_i-1]
      @api.pop_movie_details(movie)
      display_movie(movie)
      anything_else
    elsif input == "exit"
      exit_message
    else 
      wrong_input
      anything_else
end
end 
 
 

  