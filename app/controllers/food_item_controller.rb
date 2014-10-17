class FoodItemController < ApplicationController
  def show
    @item = FoodItem.find_by(id: params[:id])
  end
end
