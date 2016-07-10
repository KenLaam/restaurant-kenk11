class PagesController < ApplicationController

  def index
  end

  def admin
    @food_items = FoodItem.all
  end

  def menu
    if params[:section]
      @food_items = FoodItem.where section: params[:section]
    else
      @food_items = FoodItem.all
    end

    case params[:sort]
      when 'name'
        @sorted = @food_items.order('name ASC')
      when 'price-asc'
        @sorted = @food_items.order('price ASC')
      when 'price-desc'
        @sorted = @food_items.order('price DESC')
      else
        @sorted = @food_items
    end
  end

  def contact_us
  end

end
