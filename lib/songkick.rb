# This file will be responsible for loading all other files
# Acts as my environment to require other files

require 'nokogiri'
require 'open-uri'

require_relative './songkick/scraper'
require_relative './songkick/version'
require_relative './songkick/cli'