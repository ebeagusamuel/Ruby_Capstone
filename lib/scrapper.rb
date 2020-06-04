require 'nokogiri'
require 'httparty'

class Scrapper
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def scrape
    scraped_pages = []
    page_body = HTTParty.get(url).body
    doc = Nokogiri::HTML(page_body)
    doc.css('tr.cmc-table-row').each do |node|
      scraped_pages << node
    end
    scraped_pages
  end
end
