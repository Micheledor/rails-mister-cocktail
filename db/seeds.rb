puts "Cleaning Database..."

Ingredient.destroy_all

puts "Creating Ingredients..."

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
