class AddPriceToPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :price, :decimal, default: 0.00, null: false
  end
end
