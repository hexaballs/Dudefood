class WelcomeController < ApplicationController

  def index
    if params[:admin] == 'true'
      moment = Time.now
      delivery = moment + 45 * 60
      @delivery_time = delivery.localtime.strftime("%l:%M %p")

      @cuisine = ["Western", "Asian", "Adventurous"]
      @western = FoodItem.where(cuisine: @cuisine[0]).sample(2)
      @asian = FoodItem.where(cuisine: @cuisine[1]).sample(2)
      @adventurous = FoodItem.where(cuisine: @cuisine[2]).sample(2)

      @item = [
        { :name => @western[0].name,
          :image_url => @western[0].photo_path,
          :price => @western[0].price,
          :cuisine =>@western[0].cuisine
          },
        { :name => @western[1].name,
          :image_url => @western[1].photo_path,
          :price => @western[1].price,
          :cuisine =>@western[1].cuisine
          },
        { :name => @asian[0].name,
          :image_url => @asian[0].photo_path,
          :price => @asian[0].price,
          :cuisine =>@asian[0].cuisine
          },
        { :name => @asian[1].name,
          :image_url => @asian[1].photo_path,
          :price => @asian[1].price,
          :cuisine =>@asian[1].cuisine
          },
        { :name => @adventurous[0].name,
          :image_url => @adventurous[0].photo_path,
          :price => @adventurous[0].price,
          :cuisine =>@adventurous[0].cuisine
          },
        { :name => @adventurous[1].name,
          :image_url => @adventurous[1].photo_path,
          :price => @adventurous[1].price,
          :cuisine =>@adventurous[1].cuisine
          }
        ]
      render 'index'
    else
      render 'under_construction'
    end
  end

end
