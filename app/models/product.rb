class Product < ActiveRecord::Base
  
  # require 'carrierwave/orm/activerecord'

  attr_accessible :description, :name, :price, :image
  mount_uploader :image, ImageUploader

end
