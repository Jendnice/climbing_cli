class ClimbingCli::CLI
  
  # @@all = []
  
  def call 
    puts "Hello, climber! Today's weather at Stone Fort is 62 degrees and sunny."
    ClimbingCli::Scraper.climb_collection
    add_attributes_to_climbs
    @all = ClimbingCli::Climb.all
    binding.pry 
     list_options 
     menu 
  end
  
  def add_attributes_to_climbs
    ClimbingCli::Climb.all.each do |climb|
      further_climb_info = ClimbingCli::Scraper.all_climbs_further_info
      climb.add_climb_attributes(further_climb_info)
    end
  end
  
  def list_options
    puts "What would you like to climb today?"
    puts <<-DOC.gsub /^\s*/, ''
    - Classics
    - Volume
    - Limit
    DOC
  end 
  
  def menu 
    input = ""
    puts "Enter the name of the type of boulder problems you'd like more info on:"
    while input != nil  
      input = gets.strip.downcase  
      case input 
      when "classics" || "Classics"
        puts "More info on classics:" 
        ClimbingCli::Climb.classics
          # further_info
      when "volume" || "Volume"
        puts "More info on Volume:"
        ClimbingCli::Climb.volume
          # further_info 
      when "limit" || "Limit"
        puts "More info on Limit:"
        ClimbingCli::Climb.limit_bouldering
          # further_info 
      when "exit"
        goodbye 
      else 
        puts "I'm sorry, I don't understand what you want. Please choose a type of climbs for more info, or 'exit' to exit."
      end 
    end 
  end 
  
  # def further_info
  #   addl_input = ""
  #   puts "Enter the number of climb you'd like more info on. Or enter 'back' to go back to the previous menu."
  #   while addl_input != nil  
  #     addl_input = gets.strip.downcase  
  #     case addl_input 
  #     when "1"
  #       puts "More info on Problem 1"
  #     when "2"
  #       puts "More info on Problem 2"
  #     when "3"
  #       puts "More info on Problem 3"
  #     when "back"
  #       list_options
  #       menu
  #     when "exit"
  #       goodbye 
  #     else 
  #       puts "I'm sorry, I don't understand what you want. Please choose a problem number for more info, 'back' to go to the previous menu, or 'exit' to exit."
  #     end 
  #   end 
  # end 
  
  
  # add some part into above where user can get list of all climbs
  
  
  def goodbye 
    puts "Happy climbing!"
    exit
  end 
    
end

 # climb = ClimbingCli::Climb.new("Mizzen-Mast")

