class ClimbingCli::CLI
  
  # @@all = []
  
  def call 
    puts "Hello, climber! Today's weather at Stone Fort is XXXX62 degrees and sunny.XXXX"
    # ClimbingCli::Scraper.climb_collection
    make_climbs
    @all = ClimbingCli::Climb.all
     list_options 
     menu 
  end

  def make_climbs
    climbs_array = ClimbingCli::Scraper.all_climbs_further_info
    ClimbingCli::Climb.create_from_collection(climbs_array)
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
          further_info
      when "volume" || "Volume"
        puts "More info on Volume:"
        ClimbingCli::Climb.volume
          further_info 
      when "limit" || "Limit"
        puts "More info on Limit:"
        ClimbingCli::Climb.limit_bouldering
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
    puts "Enter the name of the climb you'd like more info on. Enter 'back' to go back to the previous menu. Or enter 'exit' to exit."
    while addl_input != nil  
      addl_input = gets.strip.downcase  
       case addl_input 
       when "back"
         list_options
         menu
       when "exit"
         goodbye 
       else 
         climb_name_input = addl_input
         ClimbingCli::Climb.further_info(climb_name_input) 
      end 
    end 
  end 
  

  
  # add some part into above where user can get list of all climbs
  
  
  def goodbye 
    puts "Happy climbing!"
    exit
  end 
    
end



