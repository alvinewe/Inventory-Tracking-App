class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :cust_name
      t.string :cust_contact_no
      t.string :cust_address
      t.decimal :post_paid, :precision => 10, :scale => 2
      t.decimal :post_cost, :precision => 10, :scale => 2
      t.decimal :post_diff, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
