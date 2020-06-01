require 'open_uri'
require 'nokogiri'

class Scrapper
	attr_reader :url

	def initialize(url)
		@url = url
	end

	def scrape
		scraped_pages = []
		start = 1
		finish = nil
		while finish.nil?
			doc = Nokogiri::HTML(open("#{url}/#{start}"))
			scraped_pages << doc
			start = start + 1
			actual = doc.css('div.owj4iq-0 > h2').each {|node| node.text}
			expected = "Sorry, we couldn't find your page"
			actual == expected ? finish = false : finish = finish
		end
		scraped_pages
	end

end