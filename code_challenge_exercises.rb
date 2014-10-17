# For each of the following pieces of data, write a single statement
# using FoodItem (for example: FoodItem.all, FoodItem.count, FoodItem.where...)
# which returns that data. Use `rails console` to experiment!

puts "* The number of items in the database"
puts FoodItem.count
puts "----------------"

puts "* The number of items in the \"Adventurous\" category"
puts FoodItem.where(cuisine: "Adventurous").count
puts "----------------"

puts "* The names of all the items in the \"Adventurous\" category"
puts FoodItem.where(cuisine: "Adventurous").map { |item| item.name }
puts "------ or ------"
puts FoodItem.where(cuisine: "Adventurous").pluck("name")
puts "------ or ------"
puts FoodItem.where(cuisine: "Adventurous").pluck(:name)
puts "----------------"

puts "* An array of all the names of all the items"
puts FoodItem.all.map {|item| item.name}
puts "------ or ------"
puts FoodItem.all.pluck("name")
puts "------ or ------"
puts FoodItem.all.pluck(:name)
puts "----------------"

# all = FoodItem.all
# names = all.map { |item| item.name }
# puts names.to_s

puts "* The name of the most expensive item in the database"
puts FoodItem.where(price: FoodItem.all.map {|item| item.price}.max).map {|item| item.name}
puts "------ or ------"
puts FoodItem.where({price: FoodItem.all.pluck(:price).max}).pluck(:name)
puts "------ or ------"
puts FoodItem.where({price: FoodItem.maximum(:price)}).pluck(:name)
puts "------ or ------"
puts FoodItem.order(:price).last.name
puts "----------------"

puts "* The cheapest item in the database formatted as a string like \"<name> ($<price>) from <restaurant name>\""
# max_price = FoodItem.all.pluck(:price).max
# name = FoodItem.where({price: FoodItem.all.pluck(:price).max}).map {|item| item.name}
# restaurant_name = FoodItem.where({price: FoodItem.all.pluck(:price).max}).map {|item| item.restaurant_name}

puts "#{FoodItem.where({price: FoodItem.maximum(:price)}).pluck(:name).join()} ($#{FoodItem.maximum(:price)}) from #{FoodItem.where({price: FoodItem.maximum(:price)}).pluck(:restaurant_name).join()}"
puts "------ or ------"
puts "#{FoodItem.where({price: FoodItem.all.pluck(:price).max}).map {|item| item.name}.join()} ($#{FoodItem.all.pluck(:price).max}) from #{FoodItem.where({price: FoodItem.all.pluck(:price).max}).map {|item| item.restaurant_name}.join()}"
puts "------ or ------"
puts "#{FoodItem.order(:price).last.name} ($#{FoodItem.order(:price).last.price}) from #{FoodItem.order(:price).last.restaurant_name}"
puts "----------------"

