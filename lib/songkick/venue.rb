class Venue
  attr_accessor :name, :address, :phone_number, :website, :url, :zip
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def venue_info
     s = Scraper.new(@url)
     s.scrape_venues(self)
   end
end
