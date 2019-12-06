class Scraper
  
  def self.scrape_denver 
    site = "https://www.songkick.com/metro-areas/6404-us-denver"
    page = Nokogiri::HTML(open(site))
    # open method can open a file, i'm passing the site in to open
    # nokogiri is a reader parser, I am specifying HTML and passing in the html to be parsed
    # url = site + section.css then i need to pass in the div, href, a tag associated with this piece of info
  end
  
  def self.scrape_event_info(artist)
    html = open(artist.url)
    doc = Nokogiri::HTML(html)
  end
  
end