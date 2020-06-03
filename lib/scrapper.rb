require 'open-uri'
require 'nokogiri'

# rubocop :disable Security/Open
class Scrapper
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def scrape
    scraped_pages = []
    doc = Nokogiri::HTML(open(url))
    doc.css('tr.cmc-table-row').each do |node|
      scraped_pages << node
    end
    scraped_pages
  end
end
# rubocop :enable Security/Open
