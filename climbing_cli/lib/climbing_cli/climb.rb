class ClimbingCli::Climb
  
  attr_accessor :name, :grade, :star_rating, :description, :photo, :video 
  
   #   ClimbingCli::Climb.new
  
  @@all = []
  

  def initialize(climb_hash)
  climb_hash.each do |key, value| self.send(("#{key}="), value)
  end 
  @@all << self
 end
  
  def self.all
    @@all.uniq 
  end 

  def self.clear
    @@all.clear
  end 
  
  def self.classics
    classic_climbs = []
    @@all.select do |climb|
       if climb.grade == "V3" || climb.grade == "V3-4" || climb.grade == "V5" || climb.grade == "V4"
       then classic_climbs << climb
       end 
      end 
        classic_climbs.each.with_index(1) do |climb, index|
        puts "#{index}. #{climb.name} (#{climb.grade})"
      end 
 end       
    
  
#  ?? def add_climb_attributes(attributes_hash) ??
# attributes_hash.each do |key, value| self.send(("#{key}="), value)
#   end
#   # not sure self is necessary here, think about it as you go
#   self 
#   end
  
#   def classics 
#     # 3 problems - mix of grades that area is well known for 
#     classics = []
      # Or maybe utilize the climbs_array for these three methods
#     @@all.collect do |climb| 
#       if climb.grade == (2..5) && climb.star_rating >= 3
#         classics << climb 
#       end 
#     classics 
#   end 
  
#   def volume 
#     # 3 problems - long climbs, traverses, moderate grades 
#     volume = []
#     @@all.collect do |climb| 
#   if climb.grade == (0..4) && climb.description.include?("traverse")
#         volume << climb 
#       end 
#     volume 
#   end 
  
#   def star_chaser
#     # 3 problems - mixture of climbs, all 4-5 stars 
#     star_chaser = []
#     @@all.collect do |climb| 
#       if climb.grade == (0..10) && climb.star_rating >= 4
#         star_chaser << climb 
#       end 
#     star_chaser 
#   end 
   
    
end  






