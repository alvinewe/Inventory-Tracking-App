class LineItem < ActiveRecord::Base
  belongs_to :order
  validates :name, :quantity, :price, :presence => true
  validates :quantity, :price, 
    :numericality => {:greater_than_or_equal_to => 0}
end
