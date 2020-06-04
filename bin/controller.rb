#!/usr/bin/env ruby

require_relative '../lib/scrapper.rb'
require_relative '../lib/page.rb'

scrapper_obj = Scrapper.new('https://coinmarketcap.com/')
scraped = scrapper_obj.scrape
page = Page.new(scraped)
arr = page.details

# rubocop disable: Layout/LineLength
def display_details(details)
  count = 1
  details.each do |val|
    puts '__________________________________________________________________________________________________________________________________________________'
    puts "#{count}) Name: #{val[:Name]}, Market_cap: #{val[:Market_cap]}, Price: #{val[:Price]}, Volume: #{val[:Volume]}, Circulating_supply: #{val[:Circulating_supply]}, Change(%): #{val[:Change]}"
    puts '__________________________________________________________________________________________________________________________________________________'
    count += 1
  end
end
# rubocop enable: Layout/LineLength

display_details(arr)
