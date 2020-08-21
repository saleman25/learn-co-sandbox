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
  
end 