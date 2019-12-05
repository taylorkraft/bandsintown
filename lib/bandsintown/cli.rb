# This class is my CLI controller, responsible for user interactions

class BandsInTown::CLI 
  
  def run
    # Scraper.scrape_bands to have my program scrape all of the bands associated with the site
    
    get_location  
    # the program with take in the user input
    
    list_bands  
    # a numbered list of bands playing shows at the location input by the user is returned
    
    show_details
    # a user can select a number to view details about the show like date, doors/show time, price, where to buy tickets, and venue
  end
  
  # any method within my call method will be instantiated upon running the program
  
  def get_location
    puts "Enter your City or Location to view a list of bands playing shows in your area:"
    input = gets.strip.to_i 
    # I want a user to enter the name of their city, or allow the computer access to their location to view the bands playing shows in their area
    # gets returns a string object read from standard input
    # strip will remove any whitespaces
  end
  
  # def valid.input?(input)
    # check to see if input is between 1 and the number of bands returned based on user input
    # input.between?(1, Bands.all.size) (I still need to create a Bands class)
  # end
  
  def list_bands
    puts "Events Near You:"
    puts <<-DOC     
      1. Billie Eilish  
      2. Post Malone
      3. Galantis
    DOC
    # here doc allows me to specify a string as a block of text where new lines and indents are preserved
    # in between the DOCs is where I want to see a returned list of bands playing shows in the area of the location input by the user
  end
  
  
  def show_details
    # prompt user to enter a number associated with a band or an artist
    puts "Choose a number to view more details about that show:"
    input = gets.strip.to_i
    # return the show details of the number selected if it is a valid input
    # if valid.input?(input)
    puts "Great choice!"
    # else
    #  puts "Sorry, not a valid choice!"
    # end
  end 
  
end