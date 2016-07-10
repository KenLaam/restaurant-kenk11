class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show, :edit, :update, :destroy, :order]

  def index
  end

  def new
    @food_item = FoodItem.new
  end

  def show
  end

  def edit
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    respond_to do |format|
      if @food_item.save
        format.html { redirect_to admin_path, notice: 'FoodItem was successfully created.' }
        format.json { render :show, status: :created, location: @food_item }
      else
        format.html { render :new }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @food_item.update(food_item_params)
        format.html { redirect_to admin_path, notice: 'FoodItem was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_item }
      else
        format.html { render :edit }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @food_item.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: 'FoodItem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_food_item
    @food_item = FoodItem.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def food_item_params
    params.require(:food_item).permit(:id, :name, :description, :price, :section)
  end

end
