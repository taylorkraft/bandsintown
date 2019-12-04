# This class is my CLI controller, responsible for user interactions

class BandsInTown::CLI 
  
  def run
    # Scraper.scrape_bands 
    area
    list_bands
    show_details
  end
  
  # any method within my call method will be instantiated upon initialization
  
  def area
    puts "Enter your City or Location to view a list of bands playing shows in your area:"
    input = gets.strip.to_i # gets returns a string object read from standard input, strip will remove any whitespace
  end 
  
  def list_bands
    puts "BandsInTown:"
    puts <<-DOC     # here doc allows me to specify a string as a block of text where new lines and indents are preserved
      1. Billie Eilish
      2. Post Malone
      3. Galantis
    DOC
  end
  
  
  def show_details
    puts "Choose a number to view the date and venue location of the show:"
    input = gets.strip
    puts "Great choice!"
  end 
  
end