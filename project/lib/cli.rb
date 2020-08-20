class CLI 
  
  def start 
    puts "Hi Welcome"
    API.new.popular_movie_url
  end 
 
 def options 
   puts "Hi please select movie or tv show"
   #has the option movie or tv show
 end 
 
 def option_move 
   puts "select a movie to read the overview"
   #once movie has been selected a list will show w the most popular and then they chose which one
 end 
 
 def option_show
   puts "select a show to read the overview"
   #once they select show a list will show the most popular shows
 end 
 
 def exit_message
   puts "thank you! enjoy your selection!"
 end 
 
end 