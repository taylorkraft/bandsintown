# this class is my CLI controller, responsible for user interactions

class SongKick::CLI 
  
  def run
   # site = "https://www.songkick.com/metro-areas/6404-us-denver"
   # html = open(site)
   # doc = Nokogiri::HTML(html)
   
    # Scraper.scrape_bands to have my program scrape all of the bands associated with the site
    view_event_details  
   
    
  end
  
  # any method within my run method will be instantiated upon running the program
  
  def view_event_details
    puts "Choose a number to view more details about an event:"
    # user enters the number that corresponds with the show they'd like to view more info about
    input = gets.strip.to_i 
    # gets returns a string object read from standard input
    # strip will remove any whitespaces
    
    # i want to scrape here to return the show details of the number selected if it is a valid input
    # if valid_input?(input)
    puts "Great choice!"
    # else
    #  puts "Sorry, not a valid Choice."
    # end
  end
  
  
  def buy_tickets
    puts "Buy tickets"
  end 
  
  # i want a loop of some sort so the program doesn't exit until being asked to
  
   def valid_input?(input)
    # check to see if input is between 1 and the number of bands returned based on user input
   until valid_input.between?(1, Band.all.size)
    puts "Sorry, not a valid choice. Choose 1 - #{Band.all.size}"
   end
  end
  
end