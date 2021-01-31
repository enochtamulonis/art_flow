class AddStockToPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :stock, :integer, default: 0
  end
end
