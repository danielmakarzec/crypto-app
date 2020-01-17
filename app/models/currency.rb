class Currency < ApplicationRecord
  def current_price
    url = 'http://api.coinmarketcap.com/v1/ticker/'
    request = HTTParty.get(url + self.slug)
    response = JSON.parse(request.body)[0]['price_usd']
  end
end
