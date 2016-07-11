class PagesController < ApplicationController

  def index
  end

  def admin
    @food_items = FoodItem.all
  end

  def menu
    if params[:section].nil?
      @food_items = FoodItem.all.order(params[:sort])
    else
      @food_items = FoodItem.by_section(params[:section]).order(params[:sort])
    end
  end

  def contact_us
  end

end
