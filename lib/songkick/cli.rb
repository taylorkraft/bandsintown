# this class is my CLI controller, responsible for user interactions

class SongKick::CLI 
  
  def run
    # Scraper.scrape_bands to have my program scrape all of the bands associated with the site
    
    get_location  
    # the program with take in the user input
    
    
    show_details
    # a user can select a number to view details about the show like venue name and address, event date and time, and where to buy tickets
    
  end
  
  # any method within my run method will be instantiated upon running the program
  
  def get_location
    puts "Choose a number to select a city:"
    puts <<-DOC     
      1. Denver, CO, US 
      2. SF Bay Area, CA, US
      3. Portland, OR, US
    DOC
    input = gets.strip.to_i 
    # user enters the number that corresponds with the city they'd like to view shows in
    # gets returns a string object read from standard input
    # strip will remove any whitespaces
  end
  
  
  def show_details
    # prompt user to enter a number associated with a band or an artist
    puts "Choose a number to view event info:"
    input = gets.strip.to_i
    # i want to scrape here to return the show details of the number selected if it is a valid input
    # if valid_input?(input)
    puts "Great choice!"
    # else
    #  puts "Sorry, not a valid Choice."
    # end
  end 
  
  # i want a loop of some sort so the program doesn't exit until being asked to
  
   def valid_input?(input)
    # check to see if input is between 1 and the number of bands returned based on user input
   until valid_input.between?(1, Band.all.size)
    puts "Sorry, not a valid choice. Choose 1 - #{Band.all.size}"
   end
  end
  
end