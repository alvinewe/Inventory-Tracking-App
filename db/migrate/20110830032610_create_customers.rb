class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :contact_no
      t.string :email
      t.string :mailing_add
      t.string :post_code
      t.string :ibank_nick
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
