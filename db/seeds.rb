# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tea.destroy_all
Ingredient.destroy_all
TeaIngredient.destroy_all

10.times do
    Tea.create(name: Faker::Coffee.blend_name, price: Faker::Number.decimal(l_digits: 2))
end
puts "yo tea is seeded"
10.times do
    Ingredient.create(name: Faker::Food.spice)
end
puts "yo ingredient is seeded"
10.times do 
    TeaIngredient.create(tea_id: Tea.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end

puts "yo data is seeded"