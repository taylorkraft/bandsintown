class SongKick::CLI

  def run
    Scraper.new.scrape_denver
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
      display_venue_details(input)
      goodbye
    else
      puts "Sorry, not a valid choice. Choose 1 - #{Artist.all.size}"
      get_event_details
    end
  end

  def valid_input?(input)
    input.between?(1, Artist.all.size)
  end


  def display_venue_details(input)
    puts "Great Choice!"
    v = Venue.all[input-1]
    v.venue_info
    puts "Venue: #{v.name}"
    puts "Address: #{v.address}, #{v.zip}"
    puts "Website: #{v.website}"
  end

  def goodbye
    puts "Do you want to exit? Type Y to exit, type any other character to continue."
    input = gets.strip.upcase
    if input == "Y"
      puts "Goodbye!"
    else
      get_event_details
    end
  end

end
