class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :key_value_id
      t.float :threshold
      t.boolean :condition

      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :key_value_id
  end
end
