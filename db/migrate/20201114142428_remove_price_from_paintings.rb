class RemovePriceFromPaintings < ActiveRecord::Migration[6.0]
  def change
    remove_column :paintings, :price, :integer
  end
end
