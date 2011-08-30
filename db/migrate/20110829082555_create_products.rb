class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :desc
      t.integer :quantity, :default => 0
      t.decimal :price_usd, :precision => 10, :scale => 2
      t.decimal :price_sgd, :precision => 10, :scale => 2
      t.decimal :exchange_rate, :precision => 10, :scale => 2
      t.datetime :payment_date
      t.datetime :order_date
      t.datetime :received_date
      t.string :add_note
      t.integer :inventory_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
