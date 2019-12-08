class Artist
  attr_accessor :name, :venue
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.artist_name
    puts "These Artists are coming to Denver:"
    sleep 0.5
    Artist.all.each.with_index(1) {|artist, idx| puts "#{idx}. #{artist.name}"}
  end
end
