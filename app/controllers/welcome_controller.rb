class WelcomeController < ApplicationController

  def index
    if params[:admin] == 'true'
      moment = Time.now
      delivery = moment + 45 * 60
      @delivery_time = delivery.localtime.strftime("%l:%M %p")

      @western = FoodItem.where(cuisine: "Western").sample(2)
      @asian = FoodItem.where(cuisine: "Asian").sample(2)
      @adventurous = FoodItem.where(cuisine: "Adventurous").sample(2)

      render 'index'
    else
      render 'under_construction'
    end
  end

end
