class Scraper
  
  def self.scrape_bands 
    site = "https://www.bandsintown.com/"
    html = open(site) #open method can open a file, I'm passing the site in to open
    doc = Nokogiri::HMTL(html) #nokogiri is a reader parser, I am specifying HTML and passing in the html to be parsed
  end
  
  def scrape_bands
    
  end 
  
end