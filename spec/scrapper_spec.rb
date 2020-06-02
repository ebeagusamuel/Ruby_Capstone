require_relative '../lib/scrapper.rb'
require_relative '../lib/page.rb'

describe Scrapper do
  let(:scrapper_obj) { Scrapper.new('https://coinmarketcap.com/') }

  describe '#scrape' do
    it 'returns an array' do
      expect(scrapper_obj.scrape).to be_kind_of(Array)
    end

    it 'returns an array that is not empty' do
      expect(scrapper_obj.scrape.size).to be > 0
    end

    it 'expects the elememt of the array to be a Nokogori element' do
      expected = Nokogiri::XML::Element
      actual = scrapper_obj.scrape[0].class
      expect(actual).to eql(expected)
    end
  end
end
