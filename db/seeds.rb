require 'json'
require 'open-uri'

puts "Cleaning Database..."

Ingredient.destroy_all

puts "Creating Ingredients..."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
link = open(url).read
cocktails = JSON.parse(link)
cocktails["drinks"].each do |cocktail|
  Ingredient.create(name: cocktail["strIngredient1"])
end

puts "Your data is ready 🍪"
