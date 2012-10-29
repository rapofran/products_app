class ProductSold < ActiveRecord::Base

  attr_accessible :price, :product_id
  validates :price, :presence => true, :numericality => true

  belongs_to :product

end
