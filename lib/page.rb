require 'open-uri'
require 'nokogiri'

class Page
  attr_reader :pages

  def initialize
    @pages = pages
  end

  def get_name
    name = []
    pages.each do |page|
      page.css('div.cmc-table__column-name > a').each do |node|
        name << node.text
      end
    end
    name
  end
end
