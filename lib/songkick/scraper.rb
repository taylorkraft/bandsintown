class Scraper
  attr_accessor :doc

  def initialize(tail = "/metro-areas/6404-us-denver")
    url = "https://www.songkick.com" + tail
    @doc = Nokogiri::HTML(open(url))
  end

  def scrape_denver
    @doc.css("ul.event-listings").each do |listing|

      listing.css("p.artists.summary").each do |summary|
        artist = Artist.new
        artist.name =  summary.css("strong").text
      end

      listing.css("span.venue-name").each do |venue|
        v = Venue.new
        v.name = venue.css('a').text
        v.url = venue.css("a").attribute("href").value
      end
    end
  end

  def scrape_venues(venue)
    venue.address = @doc.css("p.venue-hcard").css("span span")[0].text
    venue.zip = @doc.css("p.venue-hcard").css("span span")[1].text
    if @doc.css('a.url').attribute('href') == nil
      venue.website = "https://www.songkick.com" + venue.url
    else
      venue.website = @doc.css("a.url").attribute("href").value
    end
  end
end
