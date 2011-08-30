class Inventory < ActiveRecord::Base
  belongs_to :user
  has_many :products
  # accepts_nested_attributes_for :products, :reject_if => lambda { |a| a[:quantity].blank? }, :allow_destroy => true
end
