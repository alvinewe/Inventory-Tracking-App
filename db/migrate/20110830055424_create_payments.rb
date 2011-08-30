class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.integer :order_id
      t.string :payment_type
      t.decimal :postage, :precision => 10, :scale => 2
      t.decimal :total, :precision => 10, :scale => 2
      t.string :ibank_ref

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
