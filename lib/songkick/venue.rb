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
end
