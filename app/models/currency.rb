class Currency < ApplicationRecord
  def current_price
    url = 'http://api.coinmarketcap.com/v1/ticker/'
    request = HTTParty.get(url + slug)
    JSON.parse(request.body)[0]['price_usd']
  end

  def calculate_value(amount)
    (current_price.to_f * amount.to_f).round(4)
  end
end
