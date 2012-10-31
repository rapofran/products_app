class ProductSold < ActiveRecord::Base

  attr_accessible :price, :product_id
  validates :price, :presence => true, :numericality => true

  belongs_to :product

  def self.search(params)
    if search
      where(:created_at => params[:date_from]..params[:date_to])
    else
      all
    end
  end

end
