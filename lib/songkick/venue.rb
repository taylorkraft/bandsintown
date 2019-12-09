class Venue
  attr_accessor :name, :address, :phone_number, :website
  @@all = []

    def initialize
      @@all << self
    end

    def self.all
      @@all
    end

    def scrape_website
      # venue = Scraper.new(@website)
      # venue.doc.css("")
      # venue.address
    end

  def venue_info
    s = Scraper.new(@website)
    # .css("div.venue-info-details") = class that holds venue info
    # .css("a.url") = venue name
    # .css("a").attribute("href").value = venue website
    # .css()
    end
end
