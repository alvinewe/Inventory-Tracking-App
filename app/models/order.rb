class Order < ActiveRecord::Base
  has_many :line_items
  validates :cust_name, :presence => true
end
