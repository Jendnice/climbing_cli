class ClimbingCli::Scraper 
  
  def self.scrape_climbing_index_page(index_url)
    page = Nokogiri::HTML(open(https://www.mountainproject.com/area/106031921/stone-fort-aka-little-rock-city))
    all_climbs = []
    binding.pry 
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