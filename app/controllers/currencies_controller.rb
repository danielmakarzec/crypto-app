class CurrenciesController < ApplicationController
  def index
    Currency.all
  end

  def search
    @currencies = Currency.where('LOWER(name) LIKE ?', "%#{params[:search].downcase}%")
    render JSON: { currencies: @currencies }
  end

  def calculate

  end
end
