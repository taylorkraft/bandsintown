class Scraper

  attr_accessor :artist, :venue, :doc

  def initialize(tail = "/metro-areas/6404-us-denver")
    url = "https://www.songkick.com" + tail
    @doc = Nokogiri::HTML(open(url))
  end

  def scrape_denver
    @doc.css("ul.event-listings").each do |listing|

      listing.css("p.artists.summary").each do |summary|
        @artist = Artist.new
        @artist.name =  summary.css("strong").text
      end

      listing.css("span.venue-name").each do |venue|
        @venue = Venue.new
        @venue.name = venue.css('a').text
        @venue.website = venue.css("a").attribute("href").value
      end
    end
  end
end
