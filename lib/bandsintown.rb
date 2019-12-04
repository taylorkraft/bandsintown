# This file will be responsible for loading all other files
# Acts as my environment to require other files

require 'nokogiri'
require 'open-uri'

require_relative './bandsintown/scraper'
require_relative './bandsintown/version'
require_relative './bandsintown/cli'