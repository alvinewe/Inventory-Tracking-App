class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.string :inventory_type
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
