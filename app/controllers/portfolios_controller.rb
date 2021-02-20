class PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [ :show ]
  
  def index 
  end

  def show
  end

  private 

  def find_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
