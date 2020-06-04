#!/usr/bin/env ruby

require_relative '../lib/scrapper.rb'
require_relative '../lib/page.rb'

scrapper_obj = Scrapper.new('https://coinmarketcap.com/')
scraped = scrapper_obj.scrape
page = Page.new(scraped)
arr = page.details
pp arr
