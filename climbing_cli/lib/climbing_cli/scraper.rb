class ClimbingCli::Scraper 

  @@climbs_info = []
  
  
  def self.scrape_climb_with_url(url)
    page = Nokogiri::HTML(open(url))
    
    name = page.css("h1").text.strip
    grade = page.css("h2 span.rateYDS").text.chomp(" YDS")
    description = page.css("div.fr-view")[0].text
    location = page.css("div.fr-view")[1].text
    protection = page.css("div.fr-view")[2].text
    
    climb_info_hash = {:name => name, :grade => grade, :description => description, :location => location, :protection => protection} 

    @@climbs_info << climb_info_hash
  end 
  
  def self.all_climb_urls
    all_climb_urls = ["https://www.mountainproject.com/route/106981186/swingers", "https://www.mountainproject.com/route/108267565/needless-things", "https://www.mountainproject.com/route/107947503/incredarete", "https://www.mountainproject.com/route/106351450/ruby-roo", "https://www.mountainproject.com/route/107046888/spare", "https://www.mountainproject.com/route/106643396/cleopatra", "https://www.mountainproject.com/route/106350105/mystery-machine", "https://www.mountainproject.com/route/106319640/black-carpet", "https://www.mountainproject.com/route/106342585/latin-for-daggers", "https://www.mountainproject.com/route/107953610/white-face", "https://www.mountainproject.com/route/109903302/now-and-zen", "https://www.mountainproject.com/route/107147971/kingpin"]
  end 
  
  def self.all_climbs_info
    all_climb_urls.each do |url|
    scrape_climb_with_url(url)
    end 
   @@climbs_info
  end 

end

