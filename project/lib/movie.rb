class Movie
  
  attr_accessor :title , :id , :overview
 
  
  @@all = []
  
  def initialize(title, id)
    @title = title 
    @id = id
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def details(overview)
  self.overview = overview 
end
  
  def self.find_title(input)
    @@all.find do |movie|
      if input == movie.title[-1,1]
       movie.chomp
      end 
    end 
  #fidn title input argu that ends w input that ends w input
end