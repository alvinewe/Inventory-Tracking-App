class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :desc
      t.integer :quantity
      t.decimal :price_usd
      t.decimal :price_sgd
      t.decimal :exchange_rate
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
