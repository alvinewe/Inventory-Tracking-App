class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.decimal :postage, :precision => 10, :scale => 2
      t.string :status
      t.string :add_note
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
