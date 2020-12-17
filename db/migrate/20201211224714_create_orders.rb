class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal, default: 0, null: false
      t.decimal :total, default: 0, null: false

      t.timestamps
    end
  end
end
