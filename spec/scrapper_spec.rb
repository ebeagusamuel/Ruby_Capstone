require_relative '../lib/scrapper.rb'

describe Scrapper do
  let(:scrapper_obj) { Scrapper.new('https://coinmarketcap.com/') }

  describe '#scrape' do
    it 'returns an array' do
      expect(scrapper_obj.scrape).to be_kind_of(Array)
    end

    it 'returns an array that is not empty' do
      expect(scrapper_obj.scrape.size).to be > 0
    end
  end
end
