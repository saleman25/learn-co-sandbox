class Movie
  
  attr_accessor :title , :id , :overview
  
  @@all = []
  
  def initialize
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def movie(title, id, overview)
  self.title = title
  self.id = id
  self.overview = overview 
end
  
end 