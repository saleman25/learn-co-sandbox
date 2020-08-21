class CLI 
  
  def call 
    
    input = "" 
    
    while input != "exit"
    puts "Hi welcome!"
    puts "Please select movie or TV show."
    puts "Enter movie id for an overview"
    puts "Enter TV show id for an overview"
    
    case input
    when "Please select movie or TV show."
      #the user would have to type in movie or tv show 
    when "Enter movie id for an overview"
      pop_movie_details(movie)
    when "Enter TV show id for an overview"  
      pop_show_details(show)
   
   while input = "exit"
   puts exit_message
  end 
  end 
  end   
  end 
 
 def display_movie
   puts "Movie Name: #{movie.title}"
   puts "Overview: #{movie.overview}"
 end 
 
 def display_tv_show
   puts "Tv Show Name: #{show.title}"
   puts "Overview: #{show.overview}"
 end 
 

 
 
 

end 