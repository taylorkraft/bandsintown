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
    @address = s.doc.css("p.venue-hcard").css("span span")[0].text
    self.zip = s.doc.css("p.venue-hcard").css("span span")[1].text
    @website = s.doc.css("a.url").attribute("href").value
    end

    def show_details
      puts "Venue: #{self.name}"
      puts "Address: #{self.address}, #{self.zip}"
      puts "Website: #{self.website}"
    end
end
