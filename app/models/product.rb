class Product < ActiveRecord::Base

  attr_accessible :description, :name, :price, :image
  mount_uploader :image, ImageUploader
  validates :description, :presence => true
  validates :name, :presence => true
  validates :price, :presence => true, :numericality => true

  has_many :product_sold

end
