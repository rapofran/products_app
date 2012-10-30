class Product < ActiveRecord::Base

  attr_accessible :description, :name, :price, :image
  mount_uploader :image, ImageUploader
  validates :description, :presence => true
  validates :name, :presence => true
  validates :price, :presence => true, :numericality => true

  has_many :product_sold

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

  #crea un ProductSold
  def sell
    productSold = ProductSold.new

    productSold.price       = self.price
    productSold.product_id  = self.id

    productSold.save
  end

end
