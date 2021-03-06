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
  
  def self.list_all_climbs
    self.all.each.with_index(1) do |climb, index|
    puts "#{index}. #{climb.name} (#{climb.grade})".colorize(:light_blue)
   end 
  end 
  
  def self.classics
   classic_climbs = []
   @@all.select do |climb|
       if climb.grade == "V3" || climb.grade == "V3-4" || climb.grade == "V5" || climb.grade == "V4"
       then classic_climbs << climb
       end 
      end
    classic_climbs.each.with_index(1) do |climb, index|
     puts "#{index}. #{climb.name} (#{climb.grade})".colorize(:blue)
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
      puts "#{index}. #{climb.name} (#{climb.grade})".colorize(:blue)
    end 
  end
  
  def self.limit
   limit_climbs = []
   @@all.select do |climb|
     if climb.grade == "V6" || climb.grade == "V7" || climb.grade == "V8" || climb.grade == "V10"
     then limit_climbs << climb
     end 
    end 
   limit_climbs.each.with_index(1) do |climb, index|
    puts "#{index}. #{climb.name} (#{climb.grade})".colorize(:blue)
    end 
  end
  
  def self.further_info(climb_choice)
   this_climb = []
   @@all.select do |climb|
     if climb.name.downcase == climb_choice
     then this_climb << climb
     end 
    end 
   this_climb.each do |climb|
    puts "Nice choice! Here's some additonal info:".colorize(:green)
    puts "   #{climb.name} (#{climb.grade})".colorize(:blue)
    puts "Description:".colorize(:green)
    puts " #{climb.description}".colorize(:light_blue)
    puts "Location:".colorize(:green)
    puts " #{climb.location}".colorize(:light_blue)
    puts "Protection:".colorize(:green) 
    puts " #{climb.protection}".colorize(:light_blue)
   end 
  end 
  
  def self.create_from_collection(climbs_array)
   climbs_array.each do |climb| ClimbingCli::Climb.new(climb) end
  end 

end  

