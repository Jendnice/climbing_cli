# class ClimbingCli::Scraper 

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper 
  
  def self.scrape_climbing_index_page
    page = Nokogiri::HTML(open("https://www.mountainproject.com/area/classics/106031921/stone-fort-aka-little-rock-city"))
    all_climbs = []
    binding.pry 
  
  # div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td.text-nowrap table tr td
  
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

Scraper.scrape_climbing_index_page

# TBODY was the issue below (brackets added for emphasis):
# page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down [tbody] tr:nth-child(2) td:nth-child(1) a strong").text


# :name: page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td:nth-child(1) a strong").text
# :grade: page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td:nth-child(4) span.rateYDS").text
# :star_rating--won't work for main climbing scrape. Could potentially do it when providing extra info about climbs. Could also do "popularity votes" instead with the following code: page.css("div.col-md-9.float-md-right.mb-1 div.table-responsive table.table.route-table.hidden-xs-down tr:nth-child(2) td.text-nowrap table tr").text.strip
# :description
# :photo
# :video 