class Scraper

  attr_accessor :artist, :venue, :doc
  def initialize(tail = "/metro-areas/6404-us-denver")
    url = "https://www.songkick.com" + tail
    @doc = Nokogiri::HTML(open(url))
  end
  def scrape_denver
    # html = open(site) # open method can open a file, allows me to open the site i've passed in
    # doc = Nokogiri::HTML(html) # nokogiri is a reader parser, i am specifying HTML and passing in the site we just opened in order for nnokogiri to parse that site's html

  @doc.css("ul.event-listings").each do |listing|

    listing.css("p.artists.summary").each do |section|
      @artist = Artist.new
      @artist.name =  section.css("strong").text
    end
    listing.css("span.venue-name").each do |venue|
       @venue = Venue.new
       @venue.name = venue.css('a').text
       @venue.website = venue.css("a").attribute("href").value
    end

    end
  end

end
#   array_of_artists = doc.css("p.artists.summary") # i am now taking our parsed html and specifying the css selector where my artists names are held - within a <p> tag that holds an artists summary class - this returns an array with all of the information about the artists
#   array_of_artists.each do |section|
#    a = Artist.new
#    a.name =  section.css("strong").text
#   # i am iterating over the array_of_artists using map to return a new array where each element is the result of evaluating the css selector "strong" where my arists names are held. this allows the user to receive a completely new list of artists at any given point in time
#   # text method will return just our artists names in an array, rather than an array with loads of other information
#  end
# end
#
# def self.scrape_venues
#   site = "https://www.songkick.com/metro-areas/6404-us-denver"
#
#   doc = Nokogiri::HTML(open(site))
#
#   section = doc.css("span.venue-name")
#   section.each do |venue|
#     v = Venue.new
#     v.name = venue.css('a').text
#  end
