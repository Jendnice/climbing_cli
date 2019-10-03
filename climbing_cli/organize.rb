CLI:

  # def add_attributes_to_climbs
  #   ClimbingCli::Climb.all.each do |climb|
  #     further_climb_attributes = ClimbingCli::Scraper.all_climbs_further_info
  #     further_climb_attributes.each do |climb_hash|
  #     climb.add_climb_attributes(climb_hash)
  #   end 
  #   end
  # end
  
  # def add_attributes_to_students
  #   Student.all.each do |student|
  #     attributes = Scraper.scrape_profile_page(BASE_PATH + student.profile_url)
  #     student.add_student_attributes(attributes)
  #   end
  # end
  
  def make_climbs
    climbs_array = ClimbingCli::Scraper.all_climbs_further_info
    Climb.create_from_collection(climbs_array)
  end
  
  def make_students
    students_array = Scraper.scrape_index_page(BASE_PATH + 'index.html')
    Student.create_from_collection(students_array)
  end
  

CLIMB:

  # def add_climb_attributes(further_climb_info)
  # further_climb_info.each do |key, value| self.send(("#{key}="), value)
  # end
  #   self
  # end
  
  # def add_student_attributes(attributes_hash)
  #   attributes_hash.each do |key, value| self.send(("#{key}="), value)
  # end
  # self 
  # end
  
  def self.create_from_collection(climbs_array)
    climbs_array.each do |climb| ClimbingCli::Climb.new(climb) end 
  end 
  
  def self.create_from_collection(students_array)
    students_array.each do |student| Student.new(student) end 
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
  
  
  def self.scrape_profile_page(profile_url)
    page = Nokogiri::HTML(open(profile_url))
    student = {}
  
  social = page.css(".social-icon-container a").collect do |icon| icon.attribute("href").value end 
  
  social.each do |link| 
    if link.include?("twitter")
      student[:twitter] = link
    elsif link.include?(".com")
      student[:blog] = link 
    end 
  end 
  student[:profile_quote] = page.css(".profile-quote").text
  student[:bio] = page.css("div.description-holder p").text
  student 
 end


