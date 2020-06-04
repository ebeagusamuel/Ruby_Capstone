class Page
  attr_reader :pages

  def initialize(pages)
    @pages = pages
  end

  def details
    details_arr = []
    pages.each do |node|
      details_hash = { Name: node.css('td.cmc-table__cell--sort-by__name a').text,
                       Market_cap: node.css('td.cmc-table__cell--sort-by__market-cap div').text,
                       Price: node.css('td.cmc-table__cell--sort-by__price a').text,
                       Volume: node.css('td.cmc-table__cell--sort-by__volume-24-h a').text,
                       Circulating_supply: node.css('td.cmc-table__cell--sort-by__circulating-supply div').text,
                       Change: node.css('td.cmc-table__cell--sort-by__percent-change-24-h div').text }
      details_arr << details_hash
    end
    details_arr
  end
end
