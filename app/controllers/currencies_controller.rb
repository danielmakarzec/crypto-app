class CurrenciesController < ApplicationController
  def index
    Currency.all
  end

  def search
    @currencies = Currency.where('LOWER(name) LIKE ?', "%#{params[:search].downcase}%")
    render JSON: { currencies: @currencies }
  end

  def calculate
    amount = params[:amount]
    render JSON: {
      currency: currency,
      current_price: currency.current_price,
      amount: amount,
      value: currency.calculate_value(amount)
    }
  end

  private

  def currency
    @currency = Currency.find(params[:id])
  end
end
