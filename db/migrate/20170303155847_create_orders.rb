class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
     
      t.integer :quantity
      t.references :user
      t.references :item
      t.decimal :order_cost

      t.timestamps
    end
  end
end
