# this class is my CLI controller, responsible for user interactions

class SongKick::CLI

  def run
    Scraper.new.scrape_denver
    #binding.pry
    display_events
    get_event_details
  end

  def display_events
    Artist.artist_name
  end

  def get_event_details
    puts "Choose a number to view event details:"
    input = gets.strip.to_i
    if valid_input?(input)
    puts "Great choice!"
    v = Venue.all[input]
    v.venue_info
    v.show_details
    else
    puts "Sorry, not a valid choice. Choose 1 - #{Artist.all.size}"
    get_event_details
   end
  end

  def valid_input?(input)
    input.between?(1, Artist.all.size)
  end
end
# i want a loop of some sort so the program doesn't exit until being asked to
