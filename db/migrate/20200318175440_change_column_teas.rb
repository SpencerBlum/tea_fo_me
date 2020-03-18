class ChangeColumnTeas < ActiveRecord::Migration[6.0]
  def change
    change_column :teas, :price, :float
  end
end
