class CreateProductSolds < ActiveRecord::Migration
  def change
    create_table :product_solds do |t|
      t.integer :product_id
      t.float :price

      t.timestamps
    end
  end
end
