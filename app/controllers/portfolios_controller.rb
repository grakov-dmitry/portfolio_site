class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[edit update destroy show]
  layout 'portfolio'
  access all: %i[show index angular], user: { except: %i[destroy new create update edit] }, site_admin: :all

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show; end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully destroyed.' }
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(
      :title,
      :subtotle,
      :body,
      technologies_attributes: [:name]
    )
  end
end
