class PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [ :show ]
  
  def index 
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
  end

  def save
    @portfolio.user = current_user
    if @portfolio.save!
      redirect_to portfolio_path
    end
  end

  private 

  def find_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
