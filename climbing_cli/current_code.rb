class ClimbingCli::CLI
  
  def call 
    puts "Hello, climber! Today's weather at Stone Fort is 62 degrees and sunny."
    list_options 
    menu 
    # goodbye
  end
  
  def list_options 
    puts "What would you like to climb today?"
    puts <<-DOC.gsub /^\s*/, ''
     - Classics
     - Volume
     - Star-Chaser
     DOC
  end 
  
  def menu 
    input = ""
    puts "Enter the name of the type of boulder problems you'd like more info on:"
    while input != nil  
       input = gets.strip.downcase  
       case input 
       when "classics" || "Classics"
         puts "More info on classics: Problem 1, Problem 2, Problem 3"
           further_info
       when "volume" || "Volume"
         puts "More info on Volume: Problem 1, Problem 2, Problem 3"
           further_info 
       when "star-chaser" || "Star-chaser" || "Star-Chaser"
         puts "More info on Star-Chaser: Problem 1, Problem 2, Problem 3"
           further_info 
       when "exit"
         goodbye 
       else 
         puts "I'm sorry, I don't understand what you want. Please choose a type of climbs for more info, or 'exit' to exit."
       end 
     end 
  end 
  
  def further_info
    addl_input = ""
    puts "Enter the number of climb you'd like more info on. Or enter 'back' to go back to the previous menu."
    while addl_input != nil  
       addl_input = gets.strip.downcase  
       case addl_input 
       when "1"
         puts "More info on Problem 1"
       when "2"
         puts "More info on Problem 2"
       when "3"
         puts "More info on Problem 3"
       when "back"
         list_options
         menu
       when "exit"
         goodbye 
       else 
         puts "I'm sorry, I don't understand what you want. Please choose a problem number for more info, 'back' to go to the previous menu, or 'exit' to exit."
       end 
     end 
  end 
  
  def goodbye 
    puts "Happy climbing!"
    exit
  end 
  
  # continue building out the below if it makes sense:
  
          def add_to_tick_list(climb)
            @tick_list = []
            tick_list << climb 
          end 
          
          def tick_list
            puts "Here is your tick list for today!"
            @tick_list 
          end 
    
end

class ClimbingCli::Climb
  
  attr_accessor :name, :grade, :star_rating, :description, :photo, :video 
  
  @@all = []
  
  def initiailze("sternum")
    @name = name 
  end 
  
  def initiailze(climb_hash)
    climb_hash.each do |key, value| self.send(("#{key}=", value)
   end 
   @@all << self
 end
  
  def self.all
    @@all 
  end 
  
  def add_climb_attributes(attributes_hash)
    attributes_hash.each do |key, value| self.send(("#{key}="), value)
   end
   # not sure self is necessary here, think about it as you go
   self 
  end
  
  def classics 
    # 3 problems - mix of grades that area is well known for 
    classics = []
    @@all.collect do |climb| 
      if climb.grade == (2..5) && climb.star_rating >= 3
        classics << climb 
      end 
    classics 
  end 
  
  def volume 
    # 3 problems - long climbs, traverses, moderate grades 
     volume = []
    @@all.collect do |climb| 
      if climb.grade == (0..4) && climb.description.include?("traverse")
        volume << climb 
      end 
    volume 
  end 
  
  def star_chaser
    # 3 problems - mixture of climbs, all 4-5 stars 
    star_chaser = []
    @@all.collect do |climb| 
      if climb.grade == (0..10) && climb.star_rating >= 4
        star_chaser << climb 
      end 
    star_chaser 
  end 
  
end 

class ClimbingCli::Scraper 
  
  def self.scrape_climbing_index_page(index_url)
    page = Nokogiri::HTML(open(https://www.mountainproject.com/area/106031921/stone-fort-aka-little-rock-city))
    all_climbs = []
    
    #left-nav-route-table
  
    page.css("").each do |climb|
      name = climb.css("")
      grade = climb.css("")
      star_rating = climb.css("")
      description = climb.css("")
      photo = climb.css("")
      video = climb.css("")
      climb_info = {:name => name, :grade => grade, :star_rating => star_rating, :description => description, :photo => photo, :video => video}
      all_climbs << climb_info
     end 
    all_climbs
  end 
  
  
  def self.scrape_climb
    
  end 
  
  
end 

#  :name, :grade, :star_rating, :description, :photo, :video 