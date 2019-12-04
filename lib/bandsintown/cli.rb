# This class is my CLI controller, responsible for user interactions

class Bandsintown::CLI 
  
  def call
    menu
    list_bands
  end
  
  # any method within my call method will be instantiated upon initialization
  
  def menu
    puts "Enter your city or location to view a list of bands playing shows in your area:"
    input = gets.strip      # gets returns a string object read from standard input, strip will remove any whitespace
  end 
  
  def list_bands
    puts "BandsInTown:"
    puts <<-DOC     # here doc allows me to specify a string as a block of text where new lines and indents are preserved
      1. Billie Eilish
      2. Post Malone
      3. Galantis
    DOC
  end
  
  
  def venue
    
  end 
  
end