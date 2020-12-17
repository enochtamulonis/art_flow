class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.references :painting, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.decimal :total, default: 0, null: false
      t.decimal :unit_price, default: 0, null: false

      t.timestamps
    end
  end
end
