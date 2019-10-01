class ClimbingCli::Climb
  
  attr_accessible :name, :grade, :star_rating, :description, :photo, :video 
  
  @@all = []
  
  def initiailze(attribute)
    ("#{key}", "#{value}")
  end 
  
  def self.all
    @@all 
  end 
  
end 