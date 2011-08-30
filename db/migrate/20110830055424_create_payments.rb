class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.integer :order_id
      t.string :payment_type
      t.decimal :postage
      t.decimal :total
      t.string :ibank_ref

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
