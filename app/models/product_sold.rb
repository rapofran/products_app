class ProductSold < ActiveRecord::Base

  attr_accessible :price, :product_id
  validates :price, :presence => true, :numericality => true

  belongs_to :product

  def self.search(search)
    if search
      where('price < ?', "%#{search}%")
    else
      all
    end
  end

end
