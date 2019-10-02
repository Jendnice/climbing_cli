# class ClimbingCli::Scraper 

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper 
  
  # def self.scrape_climbing_index_page
  #   page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
  #   @all_climbs = []
  @@all_climbs = []
  
  def self.climb_1
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
 
     end 
    
    def self.climb_2
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(3) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(3) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info

     end 
     
    def self.climb_3
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    
      name = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(8) td:nth-child(1) a strong").text
      grade = page.css("div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(8) td:nth-child(4) span.rateYDS").text
     
      climb_info = {:name => name, :grade => grade} 

      @@all_climbs << climb_info
      
     end
     
    
    def self.all_climbs
      puts @@all_climbs
    end 
    
end 
  
  
  # def self.scrape_climb
    
  # end 
 

Scraper.climb_1
Scraper.climb_2
Scraper.climb_3
Scraper.all_climbs


# TBODY was the issue below (brackets added for emphasis):
# page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down [tbody] tr:nth-child(2) td:nth-child(1) a strong").text


# :name: page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td:nth-child(1) a strong").text
# :grade: page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td:nth-child(4) span.rateYDS").text

# name2: 
# grade2: 

#  div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(3) > td:nth-child(1) a strong

# div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(3) td:nth-child(4) span.rateYDS



# :star_rating--won't work for main climbing scrape. Could potentially do it when providing extra info about climbs. Could also do "popularity [votes]" instead with the following code: page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td.text-nowrap table tr").text.strip
# :description
# :photo
# :video 