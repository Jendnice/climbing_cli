class ClimbingCli::CLI
  
  
  def call 
    puts "Hello, climber! It's a beautiful day to get outside!".colorize(:green)
    make_climbs
    climbing_list_options 
    specific_climbing_lists
  end

  def make_climbs
    climbs_array = ClimbingCli::Scraper.all_climbs_further_info
    ClimbingCli::Climb.create_from_collection(climbs_array)
  end
  
  def climbing_list_options
    puts "What would you like to climb today?".colorize(:green)
    puts <<-DOC.gsub /^\s*/, ''
    - Classics
    - Volume
    - Limit
    DOC
  end 
  
  def specific_climbing_lists 
    climbing_option = ""
    puts "Enter any option from the list above to get more info on those climbs. (Ex. 'limit'). If you'd rather see a list of all boulder problems type 'list'.".colorize(:green)
    while climbing_option != nil  
      climbing_option = gets.strip.downcase  
      case climbing_option
      when "classics" 
        puts "More info on classics:".colorize(:green) 
        ClimbingCli::Climb.classics
          further_info
      when "volume"
        puts "More info on Volume:".colorize(:green)
        ClimbingCli::Climb.volume
          further_info 
      when "limit"
        puts "More info on Limit:".colorize(:green)
        ClimbingCli::Climb.limit
          further_info 
      when "list"
        ClimbingCli::Climb.list_all_climbs
          further_info
      when "exit"
        goodbye 
      else 
        puts "I'm sorry, I don't understand what you want. Please choose a type of boulder problems for more info, or 'exit' to exit.".colorize(:green)
      end 
    end 
  end 
  
  def further_info
    climb_choice = ""
    puts "Enter the name of the climb you'd like more info on. Enter 'back' to go back to the previous menu. Or 'exit' to exit.".colorize(:green)
    while climb_choice != nil  
      climb_choice = gets.strip.downcase  
       case climb_choice 
       when "back"
         climbing_list_options
         specific_climbing_lists
       when "exit"
         goodbye 
       else 
         ClimbingCli::Climb.further_info(climb_choice) 
      end 
    end 
  end 
  
  def goodbye 
    puts "Happy climbing!".colorize(:green)
    exit
  end 
    
end

