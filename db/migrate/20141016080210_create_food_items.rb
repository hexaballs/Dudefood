class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.float :price
      t.string :photo_path
      t.string :cuisine
      t.string :restaurant_name
      t.boolean :harrys_choice

      t.timestamps
    end
  end
end
