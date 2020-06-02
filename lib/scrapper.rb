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
    start = 1
    while start <= 1
      doc = Nokogiri::HTML(open("#{url}#{start}"))
      doc.css('tr.cmc-table-row').each do |node|
        scraped_pages << node
      end
      start += 1
    end
    scraped_pages
  end
end
# rubocop :enable Security/Open
