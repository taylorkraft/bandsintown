class Scraper
  
  def self.scrape_bands 
    site = "https://www.songkick.com/"
    html = open(site) #open method can open a file, i'm passing the site in to open
    doc = Nokogiri::HMTL(html) #nokogiri is a reader parser, I am specifying HTML and passing in the html to be parsed
    # url = site + section.css then i need to pass in the div, href, a tag associated with this piece of info
  end
  
  def self.scrape_event_info(band)
    html = open(band.url)
    doc = Nokogiri::HTML(html)
  end
  
end