class ClimbingCli::Climb
  
  attr_accessor :name, :grade, :description, :location, :protection 
  
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
  
  def self.volume 
   volume_climbs = []
  @@all.select do |climb|
     if climb.grade == "V0" || climb.grade == "V0-" || climb.grade == "V1" || climb.grade == "V2"
     then volume_climbs << climb
     end 
    end 
    volume_climbs.each.with_index(1) do |climb, index|
    puts "#{index}. #{climb.name} (#{climb.grade})"
  end 
 end
 
 def self.limit_bouldering 
   limit_bouldering_climbs = []
  @@all.select do |climb|
     if climb.grade == "V6" || climb.grade == "V7" || climb.grade == "V8" || climb.grade == "V10"
     then limit_bouldering_climbs << climb
     end 
    end 
    limit_bouldering_climbs.each.with_index(1) do |climb, index|
    puts "#{index}. #{climb.name} (#{climb.grade})"
  end 
 end
 
 def self.further_info(climb_name_input)
   binding.pry 
   climb_name_input.downcase!
   this_climb = []
  @@all.select do |climb|
     if climb.name.downcase == climb_name_input
     then this_climb << climb
     end 
    end 
    this_climb.each.with_index(1) do |climb, index|
    puts <<-DOC.gsub /^\s*/, ''
      #{climb.name} 
      (#{climb.grade})
      Description: #{climb.description} 
      Location: #{climb.location} 
      Protection: #{climb.protection}"
    DOC
  end 
 end
 

 def self.create_from_collection(climbs_array)
  climbs_array.each do |climb| ClimbingCli::Climb.new(climb) end
 end 
    
      
# def add_climb_attributes(further_climb_info)
#   binding.pry 
#   further_climb_info.each do |key, value| self.send(("#{key}="), value)
#   end
#   self
# end

# def self.further_info 
#   puts self.name
#   puts self.grade
#   puts self.description
#   puts self.location
#   puts self.protection 
# end 
  
    
end  






