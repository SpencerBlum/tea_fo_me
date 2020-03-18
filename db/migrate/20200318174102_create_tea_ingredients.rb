class CreateTeaIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :tea_ingredients do |t|
      t.integer :tea_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
