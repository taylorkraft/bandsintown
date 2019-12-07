# this class is my CLI controller, responsible for user interactions

class SongKick::CLI

  def run
   display_events
   choose_event
  end

  def display_events
    Scraper.scrape_denver
  end

  def choose_event
    puts "Choose a number to view more details about an event:"
    # user enters the number that corresponds with the show they'd like to view more info about
    input = gets.strip.to_i
    # gets returns a string object read from standard input
    # to_i will convert the string object to an integer
    # strip will remove any whitespaces

    # i want to scrape here to return the show details of the number selected if it is a valid input
    # if valid_input?(input)
    puts "Great choice!"
    # else
    #  puts "Sorry, not a valid Choice." < shouldn't need this because it is defined in valid_input? method
    # end
  end

  def valid_input?(input)
    # check to see if input is between 1 and the number of artists returned based on user input
   until valid_input.between?(1, Artist.all.size)
    puts "Sorry, not a valid choice. Choose 1 - #{Artist.all.size}"
   end
  end

  def buy_tickets
    puts "Choose a number to view ticket pricing and availability from that site:"
    input = gets.strip.to_i

  end

  # i want a loop of some sort so the program doesn't exit until being asked to



end
