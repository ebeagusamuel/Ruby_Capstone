require_relative '../lib/page.rb'
require_relative '../lib/scrapper.rb'

describe Page do
  let(:scrapped) { Scrapper.new('https://coinmarketcap.com/') }
  let(:page) { Page.new(scrapped) }

  it 'expects page to be an instance of Page class' do
    expect(page).to be_a Page
  end
end
