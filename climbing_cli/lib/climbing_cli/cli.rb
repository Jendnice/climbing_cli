class ClimbingCli::CLI
  
  @@all = []
  
  def call 
    puts "Hello, climber! Today's weather at Stone Fort is 62 degrees and sunny."
    ClimbingCli::Scraper.scrape_climb_1
    ClimbingCli::Scraper.scrape_climb_2
    ClimbingCli::Scraper.scrape_climb_3
    @all = ClimbingCli::Climb.all
     list_options 
     menu 
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
        puts "More info on classics:" 
         @all.each.with_index(1) do |climb, index|
           puts "#{index}. #{climb.name} (#{climb.grade})"
          # puts climb.grade
         end 
         
         
          # @all.each.with_index(1) do |climb, index| 
          #   puts "Problem #{index}. #{climb.name}"
          #   puts "Problem #{index}. #{climb.grade}" 
          # end 
          # further_info
      when "volume" || "Volume"
        puts "More info on Volume: Problem 1, Problem 2, Problem 3"
          # further_info 
      when "star-chaser" || "Star-chaser" || "Star-Chaser"
        puts "More info on Star-Chaser: Problem 1, Problem 2, Problem 3"
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
  
  
  def goodbye 
    puts "Happy climbing!"
    exit
  end 
    
end

 # climb = ClimbingCli::Climb.new("Mizzen-Mast")

