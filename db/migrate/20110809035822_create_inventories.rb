class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.string :name
      t.integer :quantity
      t.decimal :cost_price, :precision => 10, :scale => 2
      t.string :supplier
      t.datetime :purchased_at
      t.datetime :received_at
      t.decimal :exchange_rate, :precision => 8, :scale => 5

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
