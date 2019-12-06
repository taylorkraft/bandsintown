# This file will be responsible for loading all other files
# Acts as my environment to require other files

require 'nokogiri' # gives us code in node modules allowing us to be able to look through and grab the information we need
require 'open-uri' # gives us the ability to open a site inside of our code
require 'pry'

require_relative './songkick/scraper'
require_relative './songkick/version'
require_relative './songkick/cli'

# require_relative used for files required within my program
# require used for gems installed locally on my computer