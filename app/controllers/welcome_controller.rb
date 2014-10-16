class WelcomeController < ApplicationController

  def index
    if params[:admin] == 'true'
      moment = Time.now
      delivery = moment + 45 * 60
      @delivery_time = delivery.localtime.strftime("%l:%M %p")
      @item = [
        { :name => "Crispy Kale Grilled Cheese with Fried Eggs Sandwich",
          :image_url => "crispy_kale.jpg",
          :price => "$99"
          },
        { :name => "Grilled Flank Steak with Black Beans Corn and Tomatoes",
          :image_url => "flank_steak.jpg",
          :price => "$199"
          },
        { :name => "Three Cheese Zucchini Stuffed Lasagna Rolls",
          :image_url => "zucchini_lasagna.jpg",
          :price => "$89"
          },
        { :name => "Shredded Kale Salad With Fried Chicken",
          :image_url => "kale_fc.jpg",
          :price => "$99"
          },
        { :name => "Grilled Fish With Citrus Herb Crust",
          :image_url => "grilled_fish.jpg",
          :price => "$119"
          },
        { :name => "New York Steak with Mushrooms",
          :image_url => "steak_mushrooms.jpg",
          :price => "$299"
          }
        ]
      render 'index'
    else
      render 'under_construction'
    end
  end

end
