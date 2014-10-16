# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FoodItem.create name: "Hangar Steak", price: 10, photo_path: "steak.png", cuisine: "Western", restaurant_name: "Fer's Homestyle Kitchen", harrys_choice: true
FoodItem.create name: "Cobb Salad", price: 5000, photo_path: "cobb_salad.png", cuisine: "Western", restaurant_name: "Angie's Dream Kitchen", harrys_choice: false
FoodItem.create name: "Dust Essence", price: 50, photo_path: "dust.png", cuisine: "Adventurous", restaurant_name: "Mark's Diet", harrys_choice: false
FoodItem.create name: "Stephen's Big Sausage Pizza", price: 100, photo_path: "sausage.png", cuisine: "Adventurous", restaurant_name: "Pizza Hut", harrys_choice: true
FoodItem.create name: "Burger", price: 5, photo_path: "burger.png", cuisine: "Western", restaurant_name: "Bob's", harrys_choice: true
FoodItem.create name: "Beef Pepper Steak", price: 48, photo_path: "beef_pepper_steak.png", cuisine: "Asian", restaurant_name: "Pepper Lunch", harrys_choice: false
FoodItem.create name: "Lobster Paella", price: 250, photo_path: "lobster-paella.png", cuisine: "Western", restaurant_name: "Catalunya", harrys_choice: true
FoodItem.create name: "Crispy Kale Grilled Cheese with Fried Eggs Sandwich", price: 99, photo_path: "crispy_kale.jpg", cuisine: "Western", restaurant_name: "Yo Ma's Kitchin", harrys_choice: false
FoodItem.create name: "Peking Duck", price: 9500, photo_path: "peking_duck.png", cuisine: "Asian", restaurant_name: "KFC", harrys_choice: true
FoodItem.create name: "Essence of Man", price:150, photo_path: "juice.png", cuisine: "Adventurous", restaurant_name: "Fit Gains", harrys_choice: true
FoodItem.create name: "Pad Thai", price: 1, photo_path: "pad_thai.png", cuisine: "Asian", restaurant_name: "Bangkok Kitchen", harrys_choice: true
FoodItem.create name: "Lamp", price: 0, photo_path: "lamp.png", cuisine: "Adventurous", restaurant_name: "Lamp", harrys_choice: true
FoodItem.create name: "Chicken with Rice", price: 100, photo_path: "chicken_with_rice.png", cuisine: "Asian", restaurant_name: "Wanchai Food Truck", harrys_choice: true
FoodItem.create name: "Monkey Brain", price: 0, photo_path: "monkey_brain.png", cuisine: "Asian", restaurant_name: "Yummy Chinese Restaurant", harrys_choice: true
FoodItem.create name: "Liver with fava beans and a nice Chianti", price: 120, photo_path: "liver.png", cuisine: "Adventurous", restaurant_name: "Hannibal's Bistro", harrys_choice: false
FoodItem.create name: "Dog Meat", price: 30, photo_path: "butchered_dog.png", cuisine: "Asian", restaurant_name: "Kim Jong Un's Favourites", harrys_choice: false
FoodItem.create name: "Crab Yellow Curry ", price: 230, photo_path: "Crab Yellow Curry.png", cuisine: "Asian", restaurant_name: "Raya", harrys_choice: true
FoodItem.create name: "Frog Heart", price: 1000, photo_path: "shaking_frog.png", cuisine: "Asian", restaurant_name: "Borat's Restaurant", harrys_choice: false