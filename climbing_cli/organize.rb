CLI:

  def add_attributes_to_climbs
    ClimbingCli::Climb.all.each do |climb|
      further_climb_info = ClimbingCli::Scraper.all_climbs_further_info
      climb.add_climb_attributes(further_climb_info)
    end
  end
  
  def add_attributes_to_students
    Student.all.each do |student|
      attributes = Scraper.scrape_profile_page(BASE_PATH + student.profile_url)
      student.add_student_attributes(attributes)
    end
  end
  

CLIMB:

  def add_climb_attributes(further_climb_info)
   further_climb_info.each do |key, value| self.send(("#{key}="), value)
   end
    @@all << self
  end
  
   def add_student_attributes(attributes_hash)
    attributes_hash.each do |key, value| self.send(("#{key}="), value)
   end
   self 
  end

  
SCRAPER:

  def self.all_climbs_further_info
    all_climb_urls
    @all_climb_urls.each do |url|
    scrape_further_info_with_url(url)
   end 
  # puts @@further_info
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
  # ClimbingCli::Climb.add_climb_attributes(further_climb_info)
  end 


