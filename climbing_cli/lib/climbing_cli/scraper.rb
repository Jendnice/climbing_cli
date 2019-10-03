require 'nokogiri'
require 'open-uri'
require 'pry'

class ClimbingCli::Scraper 
  
  @@all_climbs = []
  @@further_info = []
  
  def self.scrape_climb_1
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
 
      climb_info
      ClimbingCli::Climb.new(climb_info)
     end      
    
    def self.scrape_climb_2
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(3) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(3) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
      
      climb_info
      ClimbingCli::Climb.new(climb_info)

     end 
     
    def self.scrape_climb_3
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(8) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(8) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
      
      climb_info
      ClimbingCli::Climb.new(climb_info)
     end
     
   def self.scrape_climb_4
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
  
    name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(25) td:nth-child(1) a strong").text
    grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(25) td:nth-child(4) span.rateYDS").text
   
    climb_info = {:name => name, :grade => grade} 

    @@all_climbs << climb_info

    climb_info
    ClimbingCli::Climb.new(climb_info)
   end  
   
  def self.scrape_climb_5
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
  
    name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(45) td:nth-child(1) a strong").text
    grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(45) td:nth-child(4) span.rateYDS").text
   
    climb_info = {:name => name, :grade => grade} 

    @@all_climbs << climb_info

    climb_info
    ClimbingCli::Climb.new(climb_info)
   end  
   
  def self.scrape_climb_6
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
  
    name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(60) td:nth-child(1) a strong").text
    grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(60) td:nth-child(4) span.rateYDS").text
   
    climb_info = {:name => name, :grade => grade} 

    @@all_climbs << climb_info

    climb_info
    ClimbingCli::Climb.new(climb_info)
   end  
   
  def self.scrape_climb_7
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
  
    name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(100) td:nth-child(1) a strong").text
    grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(100) td:nth-child(4) span.rateYDS").text
   
    climb_info = {:name => name, :grade => grade} 

    @@all_climbs << climb_info

    climb_info
    ClimbingCli::Climb.new(climb_info)
   end  
   
 def self.scrape_climb_8
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(30) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(30) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
 
      climb_info
      ClimbingCli::Climb.new(climb_info)
     end  
     
 def self.scrape_climb_9
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(80) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(80) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
 
      climb_info
      ClimbingCli::Climb.new(climb_info)
     end  
     
  def self.scrape_climb_10
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(74) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(74) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
 
      climb_info
      ClimbingCli::Climb.new(climb_info)
     end  
     
  def self.scrape_climb_11
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(13) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(13) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
 
      climb_info
      ClimbingCli::Climb.new(climb_info)
     end  
     
  def self.scrape_climb_12
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(94) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(94) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
 
      climb_info
      ClimbingCli::Climb.new(climb_info)
     end  
    
    def self.climb_collection
      scrape_climb_1
      scrape_climb_2
      scrape_climb_3 
      scrape_climb_4
      scrape_climb_5
      scrape_climb_6
      scrape_climb_7
      scrape_climb_8
      scrape_climb_9
      scrape_climb_10
      scrape_climb_11
      scrape_climb_12
    end 
    
    def self.all_climbs
      @@all_climbs
    end 
  
   def self.scrape_further_info
 # per climb, with climb's url included in method below 
    page = Nokogiri::HTML(open("https://www.mountainproject.com/route/108267565/needless-things"))
    
    name = page.css("h1").text.strip
    grade = page.css("h2 span.rateYDS").text.chomp(" YDS")
    description = page.css("div.fr-view")[0].text
    location = page.css("div.fr-view")[1].text
    protection = page.css("div.fr-view")[2].text
    
  further_climb_info = {:name => name, :grade => grade, :description => description, :location => location, :protection => protection} 

  @@further_info << further_climb_info

  further_climb_info
  
                          # WORK ON THIS:  

            ## !!!!   ClimbingCli::Climb.add_climbing_attributes(further_climb_info)    !!!!! ##

# Think about the best way to consolidate/encapsulate this. Can you do the above for all climbs in their own methods (or as iteration?) but then have those methods called in one big add? If you can't iteratte through each climb to add the further info, maybe you can iterate through the climbs once their further info is created and add it through to the Climb class via iteration instead of building those out indvidually, too. Or have both individual and group add so both can be done? 

  end 
  
  def self.scrape_further_info_with_url(url)
    page = Nokogiri::HTML(open(url))
    
    name = page.css("h1").text.strip
    grade = page.css("h2 span.rateYDS").text.chomp(" YDS")
    description = page.css("div.fr-view")[0].text
    location = page.css("div.fr-view")[1].text
    protection = page.css("div.fr-view")[2].text
    
  further_climb_info = {:name => name, :grade => grade, :description => description, :location => location, :protection => protection} 

  @@further_info << further_climb_info

  further_climb_info
  end 
  
  
  def self.all_climb_urls
    # have all climb urls here 
    @all_climb_urls = ["https://www.mountainproject.com/route/106981186/swingers", "https://www.mountainproject.com/route/108267565/needless-things", "https://www.mountainproject.com/route/106351450/ruby-roo", "https://www.mountainproject.com/route/107046888/spare", "https://www.mountainproject.com/route/106643396/cleopatra", "https://www.mountainproject.com/route/106350105/mystery-machine", "https://www.mountainproject.com/route/106319640/black-carpet", "https://www.mountainproject.com/route/106342585/latin-for-daggers", "https://www.mountainproject.com/route/107953610/white-face", "https://www.mountainproject.com/route/109903302/now-and-zen", "https://www.mountainproject.com/route/107147971/kingpin"]
    
    #  "https://www.mountainproject.com/route/107549961/mizzen-mast"  -->  REPLACE MIZZEN MAST EVERYWHERE (no text on climb page which throws error)
  end 
  
  
  def self.all_climbs_further_info
    all_climb_urls
    # call on other methods here to iterate through urls and add them all to/as climbs
    # ex. call on the url method, iterating through the all climb urls, so it passes each one through
    @all_climb_urls.each do |url|
    scrape_further_info_with_url(url)
   end 
   puts @@further_info
  end 


end


  
# name = page.css("h1").text.strip
# grade = page.css("h2 span.rateYDS").text.chomp(" YDS")
# description = page.css("div.fr-view")[0].text
# location = page.css("div.fr-view")[1].text
# protection = page.css("div.fr-view")[2].text
  
    # 1. XX - REPLACE - Mizzen Mast (V1)XX
    # 2. Needless Things (V0-)
    # 3. Spare (V0)
    # 4. Cleopatra (V8)
    # 5. Mystery Machine (V3)
    # 6. Black Carpet (V4)
    # 7. Latin for Daggers (V5)
    # 8. White Face (V10)
    # 9. Swingers (V3-4)
    # 10. Now and Zen (V7)
    # 11. Kingpin (V6)
    # 12. Ruby Roo (V2)

# TBODY was the issue below (brackets added for emphasis):
# page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down [tbody] tr:nth-child(2) td:nth-child(1) a strong").text

# swingers = "https://www.mountainproject.com/route/106981186/swingers"
# needless_things = "https://www.mountainproject.com/route/108267565/needless-things"
# ruby_roo = "https://www.mountainproject.com/route/106351450/ruby-roo"
# spare = "https://www.mountainproject.com/route/107046888/spare"
# cleopatra = "https://www.mountainproject.com/route/106643396/cleopatra"
# mystery_machine = "https://www.mountainproject.com/route/106350105/mystery-machine" 
# black_carpet = "https://www.mountainproject.com/route/106319640/black-carpet"
# latin_for_daggers = "https://www.mountainproject.com/route/106342585/latin-for-daggers" 
# white_face = "https://www.mountainproject.com/route/107953610/white-face"
# now_and_zen = "https://www.mountainproject.com/route/109903302/now-and-zen"
# kingpin = "https://www.mountainproject.com/route/107147971/kingpin"
