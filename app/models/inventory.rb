class Inventory < ActiveRecord::Base
  validates :name, :quantity, :cost_price, :presence => true
  validates :name, :uniqueness => true
  validates :quantity, :cost_price, 
    :numericality => {:greater_than_or_equal_to => 0}
end
