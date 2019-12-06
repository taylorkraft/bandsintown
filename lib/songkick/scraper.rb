class Scraper

  def self.scrape_denver
    site = "https://www.songkick.com/metro-areas/6404-us-denver"
    html = open(site) # open method can open a file, allows me to open the site i've passed in
    doc = Nokogiri::HTML(html) # nokogiri is a reader parser, i am specifying HTML and passing in the site we just opened in order for nnokogiri to parse that site's html
    array_of_artists = doc.css("p.artists.summary") # i am now taking our parsed html and specifying the css selector where my artists names are held - within a <p> tag that holds an artists summary class - this returns an array with all of the information about the artists
    artist_names = array_of_artists.map do |section|
    section.css("strong").text
    # i am iterating over the array_of_artists using map to return a new array where each element is the result of evaluating the css selector "strong" where my arists names are held. this allows the user to receive a completely new list of artists at any given point in time
    # text method will return just our artists names in an array, rather than an array with loads of other information
   end

   puts "Concerts in Denver"
   artist_names.each.with_index(1) do |name, i|
     puts "#{i}. #{name}"
   end
   # i am iterating over artist_names using each.with_index to give each element an index number, and passing in 1 to begin the index at 1
   # the result of this iteration will 'puts' out a list of artist names and a corresponding index number
   # i have interpolated index and name to allow for change when new artists are playing shows in denver
  end

  def self.scrape_venue_info
    site = "https://www.songkick.com/metro-areas/6404-us-denver"

    doc = Nokogiri::HTML(open(site))

    section = doc.css("span.venue-name")
    section.map do |site|
    site.css('a').text
   end
  end

end
