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
   puts "Please enter movie or tv show to view options"
   puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*"
   
   input = gets.strip
   @api = API.new
   if input == "movie"
     @api.popular_movie_url
     list_movies
   elsif input == "tv show"  
     @api.popular_tv_show_url
     list_tv_shows
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
      puts "#{i+1}. #{m.title}." 
    end
  end
  
def list_tv_shows
    TvShow.all.each.with_index do |m, i|
      sleep(0.3)
      puts "#{i+1}. #{m.title}. " 
    end
  end
  
 
  
    
  def overview_message
    puts "For an overview please enter the corresponding ID number"
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
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
    puts "Sorry I didn't quite get that, please enter a valid input."
    puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
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
 
 def display_tv_show
   sleep(1)
   puts "****************************"
   puts "Tv Show Name: #{show.title}"
   puts "---------------------------"
   sleep(1)
   puts "Overview: #{show.overview}"
   puts "---------------------------"
   puts "****************************"
   sleep(1)
 end 
 

 
 
 

 