class CreateKeyValues < ActiveRecord::Migration
  def change
    create_table :key_values do |t|
      t.string :key
      t.float :value

      t.timestamps
    end
    add_index :key_values, :key
  end
  
end
