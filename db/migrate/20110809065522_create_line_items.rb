class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.string :name
      t.integer :quantity
      t.decimal :price, :precision => 10, :scale => 2
      t.decimal :custom_price, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
